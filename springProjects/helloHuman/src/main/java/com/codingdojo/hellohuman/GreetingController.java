package com.codingdojo.hellohuman;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController {
    @GetMapping("/")
    public String greet(@RequestParam(value = "name", required = false) String name,
                        @RequestParam(value = "last_name", required = false) String lastName,
                        @RequestParam(value = "times", defaultValue = "1") Integer times) {

        StringBuilder greeting = new StringBuilder();
        String greetingPhrase;
        String finalGreeting;
        int count = 0;
        
        greeting.append("Hello ");
        if (name == null) {
        	greeting.append("Human");
        } else {
        	greeting.append(name);
        	if (lastName != null) {
        		greeting.append(" " + lastName);
        	}
        }
        
        greetingPhrase = greeting.toString();
        finalGreeting = greetingPhrase;
        
        while (count < times - 1) {
            finalGreeting += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + greetingPhrase;
            count++;
        }

        return finalGreeting;
    }
}
