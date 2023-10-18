package com.devsuperior.wolflearnings.repositories;

import com.devsuperior.wolflearnings.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

}
