package br.com.joaosbarbosa.wolflearnings.controller;

import br.com.joaosbarbosa.wolflearnings.dto.UserDTO;
import br.com.joaosbarbosa.wolflearnings.entities.User;
import br.com.joaosbarbosa.wolflearnings.services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import org.springframework.data.domain.Pageable;

import javax.validation.Valid;
import java.net.URI;

@RestController
@RequestMapping("/users")
public class UserController {
    @Autowired private UserServices services;

    @PostMapping
    public ResponseEntity<UserDTO> insert(@Valid @RequestBody UserDTO dto){
        UserDTO newDto = services.insert(dto);

        URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(newDto.getId()).toUri();
        return ResponseEntity.created(uri).body(newDto);
    }


    @GetMapping(value = "/{id}")
    public ResponseEntity<UserDTO> findById(@PathVariable Long id){
        UserDTO dto = services.findById(id);

        return ResponseEntity.ok().body(dto);
    }

    @GetMapping
    public ResponseEntity<Page<UserDTO>> findPage(Pageable pageable){
        Page<UserDTO> userDTOPage = services.findPage(pageable);

        return ResponseEntity.ok().body(userDTOPage);
    }
}
