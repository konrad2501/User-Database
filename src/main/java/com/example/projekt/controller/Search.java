package com.example.projekt.controller;

import com.example.projekt.SQLiteDB;
import com.example.projekt.model.Admin;
import com.example.projekt.model.Tour;
import com.example.projekt.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Controller
public class Search
{
    @GetMapping("Search")
    public String GetTx(@ModelAttribute("Search") User user, Map<String, Object> map) throws SQLException {
        map.put("logged", Admin.IsLogged);
        return "Search";
    }

//    @RequestMapping(method = RequestMethod.POST, value = "Search")
//    @ResponseBody
//    public void AddTx(@RequestBody List<String> user) throws SQLException{
//    }
}
