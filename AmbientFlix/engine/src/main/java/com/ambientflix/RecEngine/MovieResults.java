package com.ambientflix.RecEngine;

import java.util.List;

public class MovieResults {

	private int page;
	private int total_results;
	private int total_pages;
	private List<MovieResult> results;
	
	public int getTotal_results() {
		return total_results;
	}
	public void setTotal_results(int total_results) {
		this.total_results = total_results;
	}
	public int getTotal_pages() {
		return total_pages;
	}
	public void setTotal_pages(int total_pages) {
		this.total_pages = total_pages;
	}

	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public List<MovieResult> getResults() {
		return results;
	}
	public void setResults(List<MovieResult> results) {
		this.results = results;
	}
	
	public void setScore(int weight) {
		for (MovieResult movie: results) {
			movie.updateScore(weight);
		}
	}
	
	
}
