package com.codingdojo.devices;

public class Device {
    private int battery;

    public Device() {
        this.battery = 100;
    }

    public void displayBatteryLife() {
        System.out.println("Battery remaining: " + battery);
    }

	public int getBattery() {
		return battery;
	}

	public void setBattery(int battery) {
		this.battery = battery;
	}
}

