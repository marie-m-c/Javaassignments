package com.codingdojo.devices;

public class DeviceTest {

	public static void main(String[] args) {
		// Instantiate Phone class
        Phone myPhone = new Phone();
        
     // Call the makeCall method three times
        myPhone.makeCall();
        myPhone.makeCall();
        myPhone.makeCall();

        // Call the playGame method twice
        myPhone.playGame();
        myPhone.playGame();

        // Call the charge method once
        myPhone.charge();

	}

}
