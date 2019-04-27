package com.example.generalcalculus.models;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class Score {
    private int nrOfOperations;
    private int correctResults;
    private double time;
    private LocalDate date;
    private String difficulty;
    private String operation;

    public Score(){}

    public Score(int nrOfOperations, int correctResults, double time, LocalDate date, String difficulty,String operation) {
        this.nrOfOperations = nrOfOperations;
        this.correctResults = correctResults;
        this.time = time;
        this.date = date;
        this.difficulty = difficulty;
        this.operation = operation;
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
}
