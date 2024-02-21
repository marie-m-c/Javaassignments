package com.codingdojo.devices;

public class Phone extends Device {

    public void makeCall() {
        System.out.println("You make a call.");
        decreaseBattery(5);
    }

    public void playGame() {
    	if (getBattery() >= 25) {
            System.out.println("You play a game.");
            decreaseBattery(20);
        } else {
            System.out.println("Not enough battery to play a game. Please charge your phone.");
        }
    }

    public void charge() {
        System.out.println("Charging..");
        increaseBattery(50);
    }

    private void decreaseBattery(int amount) {
        if (getBattery() >= amount) {
            setBattery(getBattery() - amount);
        } else {
            setBattery(0);
        }
        displayBatteryLife();

        // Check if battery is critical
        if (getBattery() < 10) {
            System.out.println("Battery Critical! Please charge your phone.");
        }
    }

    private void increaseBattery(int amount) {
        if (getBattery() + amount <= 100) {
            setBattery(getBattery() + amount);
        } else {
            setBattery(100);
        }
        displayBatteryLife();
    }
}


