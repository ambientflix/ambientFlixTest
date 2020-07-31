package com.ambientflix.RecEngine;
import java.util.Comparator;


public class MovieResultComparator implements Comparator<MovieResult> {
	/**
	 * comparator class for MovieResult objects
	 */
	@Override
	public int compare(MovieResult movie1, MovieResult movie2) {
		//compare the scores of the two movie
		return movie2.getScore() - movie1.getScore();
	}
}
