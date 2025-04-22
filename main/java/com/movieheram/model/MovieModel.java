package com.movieheram.model;

public class MovieModel {
	private int movieID;
	private String title;
	private String genre;
	private int releaseYear;
	private String language;
	
	public MovieModel(int movieID, String title, String genre, int releaseYear, String language) {
		super();
		this.movieID = movieID;
		this.title = title;
		this.genre = genre;
		this.releaseYear = releaseYear;
		this.language = language;
	}

	public int getMovieID() {
		return movieID;
	}

	public void setMovieID(int movieID) {
		this.movieID = movieID;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public int getReleaseYear() {
		return releaseYear;
	}

	public void setReleaseYear(int releaseYear) {
		this.releaseYear = releaseYear;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}
	
	
	

}
