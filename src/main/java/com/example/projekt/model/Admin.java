package com.example.projekt.model;

public class Admin {
    public static int Id;
    public String nick;
    public String password;
    public static boolean IsLogged;

    public static int getId() {
        return Id;
    }

    public static void setId(int id) {
        Id = id;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
