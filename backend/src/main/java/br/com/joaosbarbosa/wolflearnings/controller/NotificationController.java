package br.com.joaosbarbosa.wolflearnings.controller;

import br.com.joaosbarbosa.wolflearnings.dto.NotificationDTO;
import br.com.joaosbarbosa.wolflearnings.services.NotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/notifications")
public class NotificationController {
    @Autowired
    private NotificationService notificationService;


    @GetMapping(value = "/{id}")
    public ResponseEntity<NotificationDTO> findById(@PathVariable Long id) {
        NotificationDTO dto = notificationService.findById(id);

        return ResponseEntity.ok().body(dto);
    }

    @GetMapping
    public ResponseEntity<Page<NotificationDTO>> findAllPages(Pageable pageable){
        Page<NotificationDTO> notificationDTOPage = notificationService.notificationsForCurrentUser(pageable);

        return ResponseEntity.ok().body(notificationDTOPage);
    }
}
