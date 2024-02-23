package com.codingdojo.abstractart;


public abstract class Art {

	protected String title;
    protected String author;
    protected String description;

    abstract void viewArt();

    public Art(String title, String author, String description) {
        this.title = title;
        this.author = author;
        this.description = description;
    }

    public String getTitle() {
        return title;
    }

    public String getAuthor() {
        return author;
    }

    public String getDescription() {
        return description;
    }
}