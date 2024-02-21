package com.codingdojo.zookeeper;

public class Mammal {
    private int energyLevel;

    public Mammal() {
        this.energyLevel = 100;
    }
    
    public Mammal(int energyLevel) {
        this.energyLevel = energyLevel;
    }

    public int displayEnergy() {
        System.out.println("Energy Level: " + energyLevel);
        return energyLevel;
    }
    
    protected void decreaseEnergy(int amount) {
        energyLevel -= amount;
        if (energyLevel < 0) {
            energyLevel = 0;
        }
    }

    protected void increaseEnergy(int amount) {
        energyLevel += amount;
        if (energyLevel > 100) {
            energyLevel = 100;
        }
    }
    
    protected void increaseEnergy(int amount, int maxValue) {
        energyLevel += amount;
        if (energyLevel > maxValue) {
            energyLevel = maxValue;
        }
    }
}

