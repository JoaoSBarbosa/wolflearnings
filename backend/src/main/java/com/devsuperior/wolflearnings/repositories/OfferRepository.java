package com.devsuperior.wolflearnings.repositories;

import com.devsuperior.wolflearnings.entities.Offer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OfferRepository extends JpaRepository<Offer, Long> {
}
