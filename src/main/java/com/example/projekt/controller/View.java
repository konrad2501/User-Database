package com.example.projekt.controller;

import com.example.projekt.SQLiteDB;
import com.example.projekt.model.Admin;
import com.example.projekt.model.Order;
import com.example.projekt.model.Tour;
import com.example.projekt.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Controller
public class View {
    @GetMapping("View")
    // metoda wykonuje GET do przekazania adresu strony, przekazuje wszystkie dane dotyczące użytkownika, aktualnego zamówienia, wybranych wycieczek
    public String doGetUsers(@ModelAttribute("User")
                                         User user, Map<String, Object> map) throws SQLException, InterruptedException {
        SQLiteDB query = new SQLiteDB();
        List<User> users = query.GetAllUsers();
        map.put("logged", Admin.IsLogged);
        map.put("users", users);
        return "View";
    }
}

//    @PostMapping("View")
//    public String AddUser(@ModelAttribute("User")
//                                      User user, Map<String, Object> map) throws SQLException, InterruptedException {
//        SQLiteDB query = new SQLiteDB();
//        List<User> users = query.GetAllUsers();
//        map.put("users", users);
//        return "View";
//    }

