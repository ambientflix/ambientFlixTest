package com.example.springboot;

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

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class SpringBootJSPApp extends SpringBootServletInitializer{
	
	public static String recFileInput = null;
	public static ArrayList<String[]> al = new ArrayList<String[]>();
	
	
	private static String readAll(Reader rd) throws IOException {
		StringBuilder sb = new StringBuilder();
		int cp;
	    while ((cp = rd.read()) != -1) {
	    	sb.append((char) cp);
	    }
	    return sb.toString();
	}

	public static JSONObject readJsonFromUrl(String url) throws IOException, JSONException {
		InputStream is = new URL(url).openStream();
		try {
			BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
			String jsonText = readAll(rd);
			JSONObject json = new JSONObject(jsonText);
			return json;
		} 
		finally {
			is.close();
		}
	}
   
	public static void main(String[] args) throws IOException{
		// TODO Auto-generated method stub
		try {
			recFileInput = args[0];
		}
		
		catch (Exception e)
		{
			recFileInput = "";
		}
		
		File myFile = new File(recFileInput);
		Scanner reader = new Scanner(myFile);
		int counter = 1;
		while (reader.hasNextLine())
		{
			String data = reader.nextLine();
			if (counter % 3 == 0)
			{
				String url = "https://api.themoviedb.org/3/movie/" + data + "?api_key=dae6cd32450211d689ce9fc4fec840a2";
				JSONObject json = readJsonFromUrl(url);
				String[] vals = new String[3];
				String s = "http://image.tmdb.org/t/p/w185";
		    	if (!(json.isNull("poster_path")))
		    	{
		    		vals[0] = s + json.getString("poster_path");
		    	}
		    	else
		    	{
		    		vals[0] = "";
		    	}
		    	vals[1] = json.getString("original_title");
		    	vals[2] = json.getString("overview");
		    	al.add(vals);
			}
			else
			{
				;
			}
			counter++;
		}
		
		SpringApplication.run(SpringBootJSPApp.class, args);
	}
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	      return application.sources(SpringBootJSPApp.class);
	}
	
}
