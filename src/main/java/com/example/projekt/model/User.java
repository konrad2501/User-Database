package com.example.projekt.model;

// Klasa zawiera pola dotyczące użytkownika
public class User {
    public int id_user;

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public String name;
    public String getName()
    {
        return name;
    }
    public void setName(String name)
    {
        this.name = name;
    }

    public String surname;
    public String getSurname() { return surname; }
    public void setSurname(String surname) { this.surname = surname; }

    private String nick;

    private String pakiet;

    private String date;

    private String comments;

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public String getPakiet() {
        return pakiet;
    }

    public void setPakiet(String pakiet) {
        this.pakiet = pakiet;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
