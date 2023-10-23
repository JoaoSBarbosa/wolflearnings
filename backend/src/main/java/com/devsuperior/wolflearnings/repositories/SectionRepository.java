package com.devsuperior.wolflearnings.repositories;
import com.devsuperior.wolflearnings.entities.Section;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SectionRepository extends JpaRepository<Section, Long> {
}
