package br.com.joaosbarbosa.wolflearnings.services;

import br.com.joaosbarbosa.wolflearnings.dto.NotificationDTO;
import br.com.joaosbarbosa.wolflearnings.entities.Notification;
import br.com.joaosbarbosa.wolflearnings.entities.User;
import br.com.joaosbarbosa.wolflearnings.repositories.NotificationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
public class NotificationService {
    @Autowired
    private NotificationRepository notificationRepository;
    @Autowired
    private AuthService authService;

    @Transactional(readOnly = true)
    public NotificationDTO findById(Long id) {
        Optional<Notification> entityOptional = notificationRepository.findById(id);

        Notification entity = entityOptional.orElseThrow(() -> new RuntimeException("Nenhuma notificação encontrada"));
        return new NotificationDTO(entity);
    }

    @Transactional(readOnly = true)
    public Page<NotificationDTO> notificationsForCurrentUser(Pageable pageable) {
        // se não tiver usuario logado, dará uma exceção e não vai prosseguir
        User user = authService.authenticated();
        Page<Notification> notifications = notificationRepository.findByUser(user,pageable);

        return notifications.map((notification -> new NotificationDTO(notification)));
    }
}
