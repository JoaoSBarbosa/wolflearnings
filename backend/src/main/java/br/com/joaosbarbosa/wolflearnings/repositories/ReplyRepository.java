package br.com.joaosbarbosa.wolflearnings.repositories;
import br.com.joaosbarbosa.wolflearnings.entities.Reply;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReplyRepository extends JpaRepository<Reply, Long> {
}
