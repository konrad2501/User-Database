package com.example.projekt.controller;

import com.example.projekt.SQLiteDB;
import com.example.projekt.model.Admin;
import com.example.projekt.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import com.example.projekt.ConnectionPool;


import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Controller
public class ListOfUsers {
    @GetMapping("ListOfUsers")
    // metoda wykonuje GET do przekazania adresu strony, przekazuje wszystkie dane dotyczące użytkownika, aktualnego zamówienia, wybranych wycieczek
    public String doGetUsers(Map<String, Object> map) throws SQLException {
        SQLiteDB query = new SQLiteDB();
        List<User> users = query.GetAllUsers();
        map.put("logged", Admin.IsLogged);
        map.put("users", users);
        return "ListOfUsers";
    }
}