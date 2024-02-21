package com.codingdojo.zookeeper;

public class MammalTest {

	public static void main(String[] args) {
		System.out.println("Gorilla Test");
		
		Gorilla gorilla = new Gorilla();

        gorilla.throwSomething();
        gorilla.throwSomething();
        gorilla.throwSomething();

        gorilla.eatBananas();
        gorilla.eatBananas();

        gorilla.climb();

        gorilla.displayEnergy();
        
        System.out.println("Bat Test");
        
        Bat bat = new Bat();

        bat.attackTown();
        bat.attackTown();
        bat.attackTown();

        bat.eatHumans();
        bat.eatHumans();

        bat.fly();
        bat.fly();

        bat.displayEnergy();

	}

}
