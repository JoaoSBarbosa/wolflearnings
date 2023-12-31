package br.com.joaosbarbosa.wolflearnings.repositories;

import br.com.joaosbarbosa.wolflearnings.entities.Notification;
import br.com.joaosbarbosa.wolflearnings.entities.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NotificationRepository extends JpaRepository<Notification, Long> {

    Page<Notification> findByUser(User user, Pageable pageable);

}
