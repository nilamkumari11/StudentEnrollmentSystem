package com.example.models;

public class Student {
    private int id;
    private String name;
    private String email;
    private String enrollmentNumber;
    private String password;
    private String progress;

    public Student(String name, String email, String enrollmentNumber, String password) {
        this.name = name;
        this.email = email;
        this.enrollmentNumber = enrollmentNumber;
        this.password = password;
    }

    public Student(int id, String name, String email, String enrollmentNumber, String password, String progress) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.enrollmentNumber = enrollmentNumber;
        this.password = password;
        this.progress = progress;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getEnrollmentNumber() {
        return enrollmentNumber;
    }

    public String getProgress() {
        return progress;
    }

    // Setters (optional if needed)
    public void setId(int id) {
        this.id = id;
    }
}
