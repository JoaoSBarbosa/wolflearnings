package br.com.joaosbarbosa.wolflearnings.repositories;

import br.com.joaosbarbosa.wolflearnings.entities.Notification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NotificationRepository extends JpaRepository<Notification, Long> {


}
