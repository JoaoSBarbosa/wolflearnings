package br.com.joaosbarbosa.wolflearnings.services;

import br.com.joaosbarbosa.wolflearnings.dto.DeliverRevisionDTO;
import br.com.joaosbarbosa.wolflearnings.entities.Deliver;
import br.com.joaosbarbosa.wolflearnings.repositories.DeliverRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DeliverService {

    @Autowired
    DeliverRepository deliverRepository;
    @Transactional
    public void saveRevision(long id, DeliverRevisionDTO dto){
        Deliver deliver = deliverRepository.getOne(id);
        deliver.setStatus(dto.getStatus());
        deliver.setFeedback(dto.getFeedback());
        deliver.setCorrectCount(dto.getCorrectCount());
        deliverRepository.save(deliver);
    }
}
