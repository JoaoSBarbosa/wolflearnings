package br.com.joaosbarbosa.wolflearnings.dto;

import br.com.joaosbarbosa.wolflearnings.entities.User;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class UserDTO implements Serializable {

    private long id;
    @NotBlank(message = "O nome é um campo obrigatório")
    @Size(min = 3, max = 20,message = "O nome deve ter entre 3 à 20 caracteres")
    private String name;
    @Email(message = "Insira um email válido")
    private String email;

    private Set<RoleDTO> roles = new HashSet<>();
    public UserDTO(){}

    public UserDTO(long id, String name, String email) {
        this.id = id;
        this.name = name;
        this.email = email;
    }

    public UserDTO(User entity) {
        id = entity.getId();
        name = entity.getName();
        email = entity.getEmail();
        entity.getRoles().forEach(role -> this.roles.add(new RoleDTO(role)));
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    public Set<RoleDTO> getRoles() {
        return roles;
    }

    public void setRoles(Set<RoleDTO> roles) {
        this.roles = roles;
    }
}
