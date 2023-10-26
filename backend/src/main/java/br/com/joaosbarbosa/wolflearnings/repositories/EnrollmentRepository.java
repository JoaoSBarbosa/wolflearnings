package br.com.joaosbarbosa.wolflearnings.repositories;

import br.com.joaosbarbosa.wolflearnings.entities.Enrollment;
import br.com.joaosbarbosa.wolflearnings.entities.pk.EnrollmentPK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EnrollmentRepository extends JpaRepository<Enrollment, EnrollmentPK> {
}
