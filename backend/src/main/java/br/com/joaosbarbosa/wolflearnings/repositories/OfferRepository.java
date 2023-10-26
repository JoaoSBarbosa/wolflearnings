package br.com.joaosbarbosa.wolflearnings.repositories;

import br.com.joaosbarbosa.wolflearnings.entities.Offer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OfferRepository extends JpaRepository<Offer, Long> {
}
