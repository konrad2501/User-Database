package com.example.projekt.controller;

import com.example.projekt.model.Admin;
import com.example.projekt.model.User;
import com.fasterxml.jackson.core.JsonParser;
import io.micrometer.core.instrument.util.IOUtils;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import java.sql.SQLException;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class Call {
    @GetMapping("Call")
    public String GetTx(@ModelAttribute("Call") User user, Map<String, Object> map) throws SQLException {
        map.put("logged", Admin.IsLogged);
        return "Call";
    }
}