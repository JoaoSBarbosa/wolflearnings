package br.com.joaosbarbosa.wolflearnings.repositories;
import br.com.joaosbarbosa.wolflearnings.entities.Resource;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ResourceRepository extends JpaRepository<Resource, Long> {
}
