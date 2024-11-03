package com.codingdojo.dojosandninjas.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.dojosandninjas.models.Dojo;
import com.codingdojo.dojosandninjas.models.Ninja;
import com.codingdojo.dojosandninjas.services.DojoService;
import com.codingdojo.dojosandninjas.services.NinjaService;

import jakarta.validation.Valid;

@Controller
public class MainController {
	
	@Autowired
	NinjaService ninjaService;
	@Autowired
	DojoService dojoService;
	
	@GetMapping("/dojos/new")
	String newDojo(Model model) {
		List<Dojo> dojos = dojoService.allDojos();
		model.addAttribute("dojos", dojos);
		model.addAttribute("newDojo", new Dojo());
		return "newDojo.jsp";
	}
	
	@PostMapping("/dojo/create")
	String createDojo(Model model,@Valid @ModelAttribute("newDojo") Dojo dojo, BindingResult result) {
		if (result.hasErrors()) {
			List<Dojo> dojos = dojoService.allDojos();
			model.addAttribute("dojos", dojos);
			return "newDojo.jsp";
		}
		dojoService.createDojo(dojo);
		return "redirect:/dojos/new";
	}
	
	@GetMapping("/ninjas/new")
	String newNinja(Model model) {
		List<Dojo> dojos = dojoService.allDojos();
		model.addAttribute("dojos", dojos);
		model.addAttribute("ninja", new Ninja());
		return "newNinja.jsp";
	}
	
	@PostMapping("/ninja/create")
	String createNinja(Model model,@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result) {
		if (result.hasErrors()) {
			List<Dojo> dojos = dojoService.allDojos();
			model.addAttribute("dojos", dojos);
			return "newNinja.jsp";
		}
		ninjaService.createNinja(ninja);
		return "redirect:/ninjas/new";
	}
	
	@GetMapping("/dojos/{id}")
	String showNinjasList(@PathVariable("id") Long id, Model model) {
		Dojo dojo = dojoService.findDojo(id);
		model.addAttribute("dojo", dojo);
		return "ninjaList.jsp";
	}
	
}
