package com.devsuperior.wolflearnings.repositories;
import com.devsuperior.wolflearnings.entities.Topic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TopicRepository extends JpaRepository<Topic, Long> {
}
