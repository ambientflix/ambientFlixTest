package com.ambientflix.RecEngine;


public class MovieResult {

	private String title, poster_path, overview;
	private int id, popularity;
	private float vote_average;
	private boolean adult;
	//private MovieKeywords keywords;
	//private List<Genre> genres;

	private int score = 0;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPoster_path() {
		return poster_path;
	}
	public void setPoster_path(String poster_path) {
		this.poster_path = poster_path;
	}
	public String getOverview() {
		return overview;
	}
	public void setOverview(String overview) {
		this.overview = overview;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPopularity() {
		return popularity;
	}
	public void setPopularity(int popularity) {
		this.popularity = popularity;
	}
	public float getVote_average() {
		return vote_average;
	}
	public void setVote_average(float vote_average) {
		this.vote_average = vote_average;
	}
	public boolean isAdult() {
		return adult;
	}
	public void setAdult(boolean adult) {
		this.adult = adult;
	}

	//public MovieKeywords getMovieKeys(){
	//	return keywords;
	//}
	//
	//public void setMovieKeys(MovieKeywords keywords){
	//	this.keywords = keywords;
	//}
//
	//public List<Genre> getGenres(){
	//	return genres;
	//}
//
	//public void setGenres(List<Genre> genres){
	//	this.genres = genres;
	//}

	public int getScore() {
		return score;
	}
	
	public void updateScore(int weight) {
		score += weight;
	}
	
	
	
}

