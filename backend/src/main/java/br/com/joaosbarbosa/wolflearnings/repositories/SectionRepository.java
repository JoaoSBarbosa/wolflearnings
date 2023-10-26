package br.com.joaosbarbosa.wolflearnings.repositories;
import br.com.joaosbarbosa.wolflearnings.entities.Section;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SectionRepository extends JpaRepository<Section, Long> {
}
