package com.caresoft.clinicapp;

import java.util.ArrayList;
import java.util.Date;

public class Physician extends User implements HIPAACompliantUser {
	private ArrayList<String> patientNotes;
	
	// TO DO: Constructor that takes an IDcopy
	public Physician(Integer idCopy) {
		id = idCopy;
	}
    // TO DO: Implement HIPAACompliantUser!
	public boolean assignPin(int pin) {
		 String pinString = String.valueOf(pin);
	        if (pinString.length() == 4) {
	        	this.pin = pin;
	            return true;
	        } else {
	            return false;
	        }
	}
	
	public boolean accessAuthorized(Integer givenId) {
		return this.id == givenId ? true : false;
	}
	
	public void newPatientNotes(String notes, String patientName, Date date) {
        String report = String.format(
            "Datetime Submitted: %s \n", date);
        report += String.format("Reported By ID: %s\n", this.id);
        report += String.format("Patient Name: %s\n", patientName);
        report += String.format("Notes: %s \n", notes);
        this.patientNotes.add(report);
    }
	
    // TO DO: Setters & Getters
}
