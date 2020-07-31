package com.ambientflix.RecEngine;
import java.util.List;

public class MovieDetail {
    
   private String title;
   private MovieKeywords keywords;
   private List<Genre> genres;
   
   public String getTitle(){
       return title;
   }
   public void setTitle(String title){
       this.title = title;
   }
   public MovieKeywords getKeywords(){
       return keywords;
   }
   public void setKeywords(MovieKeywords keywords){
       this.keywords = keywords;
   }
   public List<Genre> getGenres() {
       return genres;
   }
   public void setGenres(List<Genre> genres) {
       this.genres = genres;
   }
    
}