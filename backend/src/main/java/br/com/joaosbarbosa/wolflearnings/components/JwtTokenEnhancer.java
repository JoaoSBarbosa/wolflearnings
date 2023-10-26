package br.com.joaosbarbosa.wolflearnings.components;


import br.com.joaosbarbosa.wolflearnings.repositories.UserRepository;
import br.com.joaosbarbosa.wolflearnings.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.common.DefaultOAuth2AccessToken;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.TokenEnhancer;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

@Component
public class JwtTokenEnhancer implements TokenEnhancer {

    @Autowired
    private UserRepository repository;

    // Método para adicionar informações ao token JWT
    @Override
    public OAuth2AccessToken enhance(OAuth2AccessToken accessToken, OAuth2Authentication oAuth2Authentication) {

        // Obtém o usuário autenticado a partir do repositório
        User user = repository.findByEmail(oAuth2Authentication.getName());

        // Cria um mapa para armazenar informações adicionais no token
        Map<String, Object> map = new HashMap<>(); // chave do tipo String e valor do tipo Object

        // Adiciona informações específicas do usuário ao mapa
        map.put("userName", user.getName());
        map.put("userId", user.getId());

        // Converte o accessToken para DefaultOAuth2AccessToken para poder adicionar informações adicionais
        DefaultOAuth2AccessToken token = (DefaultOAuth2AccessToken) accessToken;

        // Define as informações adicionais no token
        token.setAdditionalInformation(map);

        return accessToken;
    }
}
