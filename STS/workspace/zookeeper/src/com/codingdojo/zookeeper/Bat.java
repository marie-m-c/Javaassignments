package com.codingdojo.zookeeper;

public class Bat extends Mammal {

    public Bat() {
        // Default energy for a Bat is 300
        super(300);
    }

    public void fly() {
        System.out.println("The bat is airborne.");
        decreaseEnergy(50);
    }

    public void eatHumans() {
        System.out.println("The bat is satisfied after eating humans.");
        increaseEnergy(25, 300);
    }

    public void attackTown() {
        System.out.println("The bat is attacking the town.");
        decreaseEnergy(100);
    }
}