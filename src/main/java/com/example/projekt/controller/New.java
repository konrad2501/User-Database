package com.example.projekt.controller;

import com.example.projekt.SQLiteDB;
import com.example.projekt.model.Admin;
import com.example.projekt.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.sql.SQLException;
import java.util.Map;
import java.util.Objects;

@Controller
public class New {
        @GetMapping("New")
        public String GetNew(@ModelAttribute("New") User user, Map<String, Object> map) throws SQLException {
            map.put("logged", Admin.IsLogged);
            return "New";
        }
    @PostMapping("New")
    public String AddUser(@Valid @ModelAttribute ("New") User user) throws SQLException {
        SQLiteDB query = new SQLiteDB();
        query.AddNewUser(user);
        return "redirect:Menu";
    }
}
