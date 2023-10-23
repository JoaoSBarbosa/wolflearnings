package com.devsuperior.wolflearnings.repositories;

import com.devsuperior.wolflearnings.entities.Lesson;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LessonRepository extends JpaRepository<Lesson, Long> {
}
