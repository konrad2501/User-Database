package com.example.projekt.controller;

import com.example.projekt.SQLiteDB;
import com.example.projekt.model.Admin;
import com.example.projekt.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import com.example.projekt.ConnectionPool;


@Controller
public class Edit
{
    @GetMapping(value = "Edit/{id}")
    public String getEditUser(@PathVariable int id, @ModelAttribute("Edit") User user, Map<String, Object> map) throws SQLException
    {
        SQLiteDB query = new SQLiteDB();
        List<User> users = query.GetAllUsers();
        map.put("logged", Admin.IsLogged);
        for(User item : users)
        {
            if(item.getId_user() == id)
            {
                map.put("users", item);
            }
        }
        return "Edit";
    }

    @PostMapping(value = "Edit/{id}")
    public String addEditUser(@PathVariable int id, @ModelAttribute("Edit") User user) throws SQLException
    {
        user.setId_user(id);
        SQLiteDB query = new SQLiteDB();
        query.UpdateUser(user);
        return "redirect:../ListOfUsers";
    }
}