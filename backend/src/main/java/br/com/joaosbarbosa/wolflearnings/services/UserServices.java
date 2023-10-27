package br.com.joaosbarbosa.wolflearnings.services;

import br.com.joaosbarbosa.wolflearnings.dto.RoleDTO;
import br.com.joaosbarbosa.wolflearnings.dto.UserDTO;
import br.com.joaosbarbosa.wolflearnings.entities.Role;
import br.com.joaosbarbosa.wolflearnings.entities.User;
import br.com.joaosbarbosa.wolflearnings.repositories.RoleRepository;
import br.com.joaosbarbosa.wolflearnings.repositories.UserRepository;
import br.com.joaosbarbosa.wolflearnings.services.exceptions.ResourceNotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
public class UserServices implements UserDetailsService {
    private static Logger logger = LoggerFactory.getLogger(UserServices.class);
    @Autowired private BCryptPasswordEncoder passwordEncoder;
    @Autowired private UserRepository repository;
    @Autowired private RoleRepository roleRepository;

    @Autowired private AuthService authService;
    public UserDTO insert(UserDTO dto) {
        User entity = new User();

        copyDtoToEntity(entity, dto);
//        entity.setPassword(passwordEncoder.encode(dto.getPassword()));
        entity = repository.save(entity);
        return new UserDTO(entity);
    }


    @Transactional(readOnly = true)
    public UserDTO findById(Long id){
        // Verifica se o usuário autenticado tem permissão para acessar o perfil do usuário com o ID fornecido.
        authService.validateSelfOrAdmin(id);

        // Busca o usuário no repositório pelo ID.
        Optional<User> userOptional = repository.findById(id);

        // Se o usuário não for encontrado, lança uma exceção ResourceNotFoundException.
        User entity = userOptional.orElseThrow(()-> new ResourceNotFoundException("Não localizado através do id "+id));

        // Retorna um DTO que representa o usuário encontrado.
        return new UserDTO(entity);
    }


    @Transactional(readOnly = true)
    public Page<UserDTO> findPage(Pageable pageable){
        Page<User> userPage = repository.findAll(pageable);
        return userPage.map((x) -> new UserDTO(x));
    }
    @Transactional
    public void copyDtoToEntity(User entity, UserDTO dto){

        entity.setEmail(dto.getEmail());
        entity.setName(dto.getName());

        entity.getRoles().clear();

        for(RoleDTO roleDTO: dto.getRoles()){
            Role role = roleRepository.getOne(roleDTO.getIg());

            entity.getRoles().add(role);
        }
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = repository.findByEmail(username);

        if(user == null ){
            logger.error("Usuário não encontrado: " + username);
            throw new UsernameNotFoundException("Email não encontrado");
        }
        logger.info("User encontrado: "+username);
        return user;
    }
}
