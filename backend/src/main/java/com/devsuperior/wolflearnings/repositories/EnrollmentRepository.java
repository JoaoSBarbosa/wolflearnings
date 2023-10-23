package com.devsuperior.wolflearnings.repositories;

import com.devsuperior.wolflearnings.entities.Enrollment;
import com.devsuperior.wolflearnings.entities.pk.EnrollmentPK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EnrollmentRepository extends JpaRepository<Enrollment, EnrollmentPK> {
}
