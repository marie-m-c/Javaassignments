package com.codingdojo.zookeeper;

public class Gorilla extends Mammal {

    public void throwSomething() {
        System.out.println("The gorilla has thrown something.");
        decreaseEnergy(5);
    }

    public void eatBananas() {
        System.out.println("The gorilla is satisfied after eating bananas.");
        increaseEnergy(10);
    }

    public void climb() {
        System.out.println("The gorilla has climbed a tree.");
        decreaseEnergy(10);
    }
}
