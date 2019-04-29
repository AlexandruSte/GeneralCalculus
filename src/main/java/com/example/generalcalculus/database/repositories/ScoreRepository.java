package com.example.generalcalculus.database.repositories;

import com.example.generalcalculus.database.models.Score;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ScoreRepository extends JpaRepository<Score, Long> {
}
