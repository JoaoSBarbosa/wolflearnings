package com.devsuperior.wolflearnings.services;

import com.devsuperior.wolflearnings.dto.RoleDTO;
import com.devsuperior.wolflearnings.dto.UserDTO;
import com.devsuperior.wolflearnings.entities.Role;
import com.devsuperior.wolflearnings.entities.User;
import com.devsuperior.wolflearnings.repositories.RoleRepository;
import com.devsuperior.wolflearnings.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServices {
    @Autowired private UserRepository repository;
    @Autowired private RoleRepository roleRepository;

    public UserDTO insert(UserDTO dto) {
        User entity = new User();

        copyDtoToEntity(entity, dto);

        entity = repository.save(entity);
        return new UserDTO(entity);
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
}
