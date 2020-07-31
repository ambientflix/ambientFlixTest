package com.ambientflix.RecEngine;

import java.io.File;
import java.util.Collection;
import java.util.Hashtable;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class KeywordServiceImpl implements KeywordsService {
	private static Hashtable<String, Keywords> keywordsLookupTable;
	
	/**
	 * class to implement all the services needed for Keywords objects
	 */
	public KeywordServiceImpl() {
		keywordsLookupTable = new Hashtable<String, Keywords>();
		Keywords tweet = new Keywords("tweet", 1);
		createKeywords(tweet);
		
		Keywords name = new Keywords("name", 3);
		createKeywords(name);

		Keywords location = new Keywords("location", 2);
		createKeywords(location);

		
		Keywords weather = new Keywords("weather", 1);
		createKeywords(weather);
		
		Keywords news = new Keywords("news", 1);
		createKeywords(news);
		
		Keywords genre = new Keywords("genre", 2);
		createKeywords(genre);
		
		Keywords song = new Keywords("song", 1);
		createKeywords(song);

	}
	
	public void createKeywords(Keywords keyword) {
		keywordsLookupTable.put(keyword.getName(), keyword);
		
	}
	public void updateKeywords(String type, String word) {
		keywordsLookupTable.get(type).addWords(word);;
	}
	
	
	public Collection<Keywords> getKeywords(){
		return keywordsLookupTable.values();
	}
	
	/**
     * grabs keywords from txt file and update keywordLookupTable
     * @param inputFile
     * @param fileScan
     * @return
     */
    public void readKeywordsFromFile(File inputFile, Scanner fileScan) {
        while(fileScan.hasNext()){
        	String line = fileScan.nextLine();
        	String word = line.substring(line.indexOf(')')+1);
        	String type = "";
        	Pattern r = Pattern.compile("\\([a-zA-Z]+\\)");
        	Matcher m = r.matcher(line);
        	if (m.find()) {
        		type = m.group(0);
        		type = type.replaceAll("\\(", "");
        		type = type.replaceAll("\\)", "");
        	} else {
        		System.out.println("Can't find type");
        	}
        	
        	if (keywordsLookupTable.keySet().contains(type)) {
        		if (!word.equals("")) {
                	updateKeywords(type, word);
        		}
        	}
        
        }
    }
	
}
