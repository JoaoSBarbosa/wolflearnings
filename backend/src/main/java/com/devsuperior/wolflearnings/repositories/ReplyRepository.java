package com.devsuperior.wolflearnings.repositories;
import com.devsuperior.wolflearnings.entities.Reply;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReplyRepository extends JpaRepository<Reply, Long> {
}
