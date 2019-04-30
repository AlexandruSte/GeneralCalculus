package com.example.generalcalculus.database.repositories;

import com.example.generalcalculus.database.models.Score;
import com.example.generalcalculus.database.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ScoreRepository extends JpaRepository<Score, Long> {
    List<Score> findByUser(User id);

    List<Score> findByUserAndOperation(User user, String operation);

    List<Score> findFirst10ByUserAndOperationOrderByAvgTimeDesc(User user, String operation);
}
