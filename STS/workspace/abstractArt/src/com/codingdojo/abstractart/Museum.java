package com.codingdojo.abstractart;

import java.util.ArrayList;
import java.util.Collections;

public class Museum {

	public static void main(String[] args) {
		
		ArrayList<Art> museum = new ArrayList<>();
		
        Painting painting1 = new Painting("Starry Night", "Vincent van Gogh", "Oil on canvas", "Oil");
        Painting painting2 = new Painting("Mona Lisa", "Leonardo da Vinci", "Oil on poplar panel", "Oil");
        Painting painting3 = new Painting("Girl with a Pearl Earring", "Johannes Vermeer", "Oil on canvas", "Oil");

        Sculpture sculpture1 = new Sculpture("Angé", "Auguste Rodin", "Marble statue", "Marble");
        Sculpture sculpture2 = new Sculpture("Hannibal Barca", "Unknown Artist", "Bronze statue", "Bronze");
        
        museum.add(painting1);
        museum.add(painting2);
        museum.add(painting3);
        museum.add(sculpture1);
        museum.add(sculpture2);
        
     // Shuffle the museum
        Collections.shuffle(museum);

        // Print information for each artwork in the shuffled museum
        for (Art artwork : museum) {
            artwork.viewArt();
            System.out.println();
        }
	}

}
