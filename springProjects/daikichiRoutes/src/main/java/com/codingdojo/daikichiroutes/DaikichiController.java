package com.codingdojo.daikichiroutes;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/daikichi")
public class DaikichiController {
	@RequestMapping("")
    public String welcomeMessage() {
            return "Welcome!";
    }

	@RequestMapping("/today")
    public String todayMessage() {
            return "Today you will find luck in all your endeavors!";
    }
	
	@RequestMapping("/tomorrow")
    public String tomorrowMessage() {
            return "Tomorrow, an opportunity will arise, so be sure to be open to new ideas!";
    }

	@RequestMapping("/travel/{city}")
    public String travelMessage(@PathVariable("city") String city) {
        return "Congratulations! You will soon travel to " + city + "!";
    }

	@RequestMapping("/lotto/{number}")
    public String lottoMessage(@PathVariable("number") int number) {
        if (number % 2 == 0) {
            return "You will take a grand journey in the near future, but be wary of tempting offers.";
        } else {
            return "You have enjoyed the fruits of your labor but now is a great time to spend time with family and friends.";
        }
    }
}
