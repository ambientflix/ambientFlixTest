package com.example.springboot;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONArray;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloController {

	@RequestMapping("/")
	public String index() {
		return "index";
	}
	  
	@GetMapping({"/hello"})
    public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
		
	    for (int i = 1; i < SpringBootJSPApp.al.size()+1; i++)
	    {
	    	String[] sArray = SpringBootJSPApp.al.get(i-1);
	    	for (int j = 0; j < sArray.length; j++)
	    	{
	    		String s = sArray[j];
	    		if (j == 0)
	    		{
	    			String rep = "picture" + i;
                                if (s.equals("(unknown)") || s.equals(""))
				{
					s = "/pics/blank.png";
				}
	    			model.addAttribute(rep, s);
	    		}
	    		else if (j == 1)
	    		{
	    			String rep = "title" + i;
	    			model.addAttribute(rep, s);
	    		}
	    		else
	    		{
	    			String rep = "desc" + i;
	    			model.addAttribute(rep, s);
	    		}
	    	}
	    }
	    
        return "hello";
    }

}
