package com.codingdojo.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.dojosandninjas.models.Ninja;
import com.codingdojo.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	@Autowired
	NinjaRepository ninjaRepository;
	
	// returns all the ninjas
	 public List<Ninja> allNinjas() {
	     return ninjaRepository.findAll();
	 }
	 
	 // creates a ninja
	 public Ninja createNinja(Ninja ninja) {
	     return ninjaRepository.save(ninja);
	 }
	 
	 //retrieve a ninja
	 public Ninja findNinja(Long id) {
	     Optional<Ninja> optionalNinja = ninjaRepository.findById(id);
	     if(optionalNinja.isPresent()) {
	         return optionalNinja.get();
	     } else {
	         return null;
	     }
	 }

}
