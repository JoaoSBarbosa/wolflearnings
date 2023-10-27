package br.com.joaosbarbosa.wolflearnings.services;

import br.com.joaosbarbosa.wolflearnings.entities.User;
import br.com.joaosbarbosa.wolflearnings.repositories.UserRepository;
import br.com.joaosbarbosa.wolflearnings.services.exceptions.ForbiddenException;
import br.com.joaosbarbosa.wolflearnings.services.exceptions.UnauthorizedException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AuthService {

    @Autowired
    UserRepository userRepository;
    @Transactional(readOnly = true)
    public User authenticated(){
        try {
            // pega o usuário que já foi autenticado
            String username = SecurityContextHolder.getContext().getAuthentication().getName();
            // busca esse usuário no banco(nesse caso, o usuário faz login pelo email)
            return userRepository.findByEmail(username);
        }catch (Exception e){
            throw new UnauthorizedException("Usuário inválido ou não autorizado");
        }
    }


    /**
     * Valida se o usuário autenticado tem permissão para acessar o login de outro usuário ou se é um administrador.
     *
     * @param userId O ID do usuário a ser validado.
     * @throws ForbiddenException Lançada se o usuário não tem permissão para acessar o login de outro usuário.
     */
    public void validateSelfOrAdmin(Long userId){
        User user = authenticated();

        // Verifica se o usuário autenticado não é o mesmo do parâmetro e também não é um administrador.
        if(!user.getId().equals(userId) && !user.hasHole("ROLE_ADMIN")){
            throw new ForbiddenException("Você não tem permissão para acessar o login de outro usuário");
        }
    }

}
