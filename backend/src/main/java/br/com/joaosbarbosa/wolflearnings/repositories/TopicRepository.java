package br.com.joaosbarbosa.wolflearnings.repositories;
import br.com.joaosbarbosa.wolflearnings.entities.Topic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TopicRepository extends JpaRepository<Topic, Long> {
}
