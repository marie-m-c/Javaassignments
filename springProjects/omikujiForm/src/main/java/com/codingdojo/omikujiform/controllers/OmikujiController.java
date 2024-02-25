package com.codingdojo.omikujiform.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class OmikujiController {
	@GetMapping("/omikuji")
	String index() {
		return "index.jsp";
	}

	@GetMapping("/omikuji/show")
	public String show() {
		return "omikuji.jsp";
	}

	@PostMapping("/create_message")
	public String process(@RequestParam("number") int number, @RequestParam("city") String city,
			@RequestParam("person") String person, @RequestParam("hobby") String hobby,
			@RequestParam("livingThing") String livingThing, @RequestParam("message") String message,
			HttpSession session) {

		String omikujiMessage = String.format(
				"In %s years you will live in %s with %s as your roommate, %s. The next time you see a %s, you will have good luck. Also, %s.",
				number, city, person, hobby, livingThing, message);

		session.setAttribute("omikujiMessage", omikujiMessage);

		return "redirect:/omikuji/show";
	}
}
