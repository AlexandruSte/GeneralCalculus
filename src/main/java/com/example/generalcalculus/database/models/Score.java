package com.example.generalcalculus.database.models;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@Entity
@Table(name = "score")
public class Score {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private int nrOfOperations;
    private int correctResults;
    private double time;
    private LocalDate date;
    private String difficulty;
    private String operation;
    private String avgTime;
    private String percentage;

    public Score(){}

    public Score(int nrOfOperations, int correctResults, double time, LocalDate date, String difficulty,String operation) {
        this.nrOfOperations = nrOfOperations;
        this.correctResults = correctResults;
        this.time = time;
        this.date = date;
        this.difficulty = difficulty;
        this.operation = operation.substring(0, operation.length() - 1);
        avgTime = new DecimalFormat("##.##").format(time/nrOfOperations) + " s";
        int d = (correctResults*100/nrOfOperations);
        percentage = d + "%";
    }

    public int getNrOfOperations() {
        return nrOfOperations;
    }

    public void setNrOfOperations(int nrOfOperations) {
        this.nrOfOperations = nrOfOperations;
    }

    public int getCorrectResults() {
        return correctResults;
    }

    public void setCorrectResults(int correctResults) {
        this.correctResults = correctResults;
    }

    public double getTime() {
        return time;
    }

    public void setTime(double time) {
        this.time = time;
    }

    public String getDate() {
        DateTimeFormatter formatters = DateTimeFormatter.ofPattern("dd/MM/uuuu");
        String text = date.format(formatters);
        LocalDate parsedDate = LocalDate.parse(text, formatters);
        return parsedDate.format(formatters);
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public String getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(String difficulty) {
        this.difficulty = difficulty;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }

    public String getAvgTime(){
        return avgTime;
    }

    public String getPercentage(){
        return percentage;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setAvgTime(String avgTime) {
        this.avgTime = avgTime;
    }

    public void setPercentage(String percentage) {
        this.percentage = percentage;
    }
}
