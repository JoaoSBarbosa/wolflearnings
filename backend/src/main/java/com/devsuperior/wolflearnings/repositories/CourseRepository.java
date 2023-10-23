package com.devsuperior.wolflearnings.repositories;

import com.devsuperior.wolflearnings.entities.Course;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CourseRepository extends JpaRepository<Course, Long> {
}
