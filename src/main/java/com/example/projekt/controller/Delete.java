package com.example.projekt.controller;

import com.example.projekt.SQLiteDB;
import com.example.projekt.model.Admin;
import com.example.projekt.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Controller
public class Delete
{
    @GetMapping("Delete")
    public String GetNew(@ModelAttribute("Delete") User user, Map<String, Object> map) throws SQLException {
        map.put("logged", Admin.IsLogged);
        return "Delete";
    }

    @PostMapping("Delete")
    public String addDeleteUser(@ModelAttribute("Delete") User user) throws SQLException
    {
        SQLiteDB query = new SQLiteDB();
        query.DeleteUser(user);
        return "redirect:Menu";
    }
}
