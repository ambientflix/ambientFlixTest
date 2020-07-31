package com.ambientflix.RecEngine;

import java.util.List;
import java.util.ArrayList;
import java.util.Collections;

import org.springframework.web.client.RestTemplate;

public class RecListGenerator {
     private List<MovieResult> recList;
     private List<Keywords> values;

     /**
      * class to generate recommendation list from a list of keywords
      * @param values
      */
     public RecListGenerator(List<Keywords> values) {
    	 recList = new ArrayList<MovieResult>();
    	 this.values = values;
     }
     
     /**
      * recommendation list generator
      * @return
      */
     public List<MovieResult> generator() {
    	//get movieResults of each keyword in the list
         for (Keywords keywords: values) {
 			getMovieResults(keywords);
         }
         
// 		//check movie to see if their keywords match with the values collected from files
// 		for(Keywords keywords: values) {
// 			checkKeywords(keywords);
// 		}
// 
// 		//check movie to see if their genres match with the values collected from files
// 		for(Keywords keywords: values) {
// 			checkGenres(keywords);
// 		}
         
         Collections.sort(recList, new MovieResultComparator());
    	 return recList;
     }
     
     
	/**
     * Check to see if any of the new movie results appear in recList.
     * If the movie is already in recList, update the score of that movie.
     * Else, add that movie to the list
     * @param results - new list of MovieResult by querying a new keyword
     */
	public void updateRecList(MovieResults results) {
		float ratio = 0.2f;
		for (int i = 0; i < results.getResults().size()*ratio; i++ ) {
			boolean hasSeen = false;
			for (MovieResult movie: recList) {
				if (movie.getTitle().equals(results.getResults().get(i).getTitle())) {
					movie.updateScore(results.getResults().get(i).getScore());
					hasSeen = true;
					break;
				} 
			}
			
			if (!hasSeen) {
				recList.add(results.getResults().get(i));
			}
		}
	}
	
	/**
	 * get a list of MovieResults by querying all the keywords in the values list.
	 * update the recList based on the MovieResults acquired
	 * @param keywords
	 */
	public void getMovieResults(Keywords keywords) {
		RestTemplate restTemplate = new RestTemplate();
		for (String keyword: keywords.getkeywords()) {
			String query = keyword.replaceAll("\\s+", "+");
			MovieResults results = restTemplate.getForObject("https://api.themoviedb.org/3/search/movie?api_key=9950b15cd666adb852b2ea54472b7c38&query="+query, MovieResults.class);		
			
			results.setScore(keywords.getWeight());

			updateRecList(results);	
		}
	}
	
	/**
	 * Goes through the queried recommendation list one-by-one and uses their ids to request for their specific details in which 
	 * their own keywords are located. Using these keywords, we see whether they match the keywords from data input.
	 * If yes, the movie's score is increased.
	 */ 
	public void checkKeywords(Keywords keywords) {
		RestTemplate restTemplate2 = new RestTemplate();
		for (MovieResult movie: recList){
			int movie_id = movie.getId();
			MovieDetail result = restTemplate2.getForObject("https://api.themoviedb.org/3/movie/{movie_id}?api_key=64a51e683b1854ed324abcdc797de47a&language=en-US&append_to_response=keywords", MovieDetail.class, Integer.toString(movie_id));
			for (MovieKeyword keyword: result.getKeywords().getKeywords()){
				for (String key: keywords.getkeywords()){
					if (keyword.getName().equals(key)){
						movie.updateScore(1);
					}
				}
			}	
		}
	}
	
	/**
	 * Goes through the queried recommendation list one-by-one and uses their ids to request for their specific details in which
	 * their individual list of genres is located. Using these genres, we see whether they match the keywords from data input.
	 * If yes, the movie's score is increased.
	 */
	public void checkGenres(Keywords keywords){
		RestTemplate restTemplate3 = new RestTemplate();
		for (MovieResult movie: recList){
			int movie_id = movie.getId();
			MovieDetail result = restTemplate3.getForObject("https://api.themoviedb.org/3/movie/{movie_id}?api_key=64a51e683b1854ed324abcdc797de47a&language=en-US&append_to_response=keywords", MovieDetail.class, Integer.toString(movie_id));
			for (Genre genre: result.getGenres()){
				for (String key: keywords.getkeywords()){
					if (genre.getName().equals(key)){
						movie.updateScore(1);
					}
				}
			}
		}
	}

}
