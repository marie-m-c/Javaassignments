package com.codingdojo.productsandcategories.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.productsandcategories.models.Category;
import com.codingdojo.productsandcategories.repositories.CategoryRepository;

@Service
public class CategoryService {
	
	@Autowired
	CategoryRepository categoryRepository;
	
	// returns all the categories
		public List<Category> allCategories() {
			return categoryRepository.findAll();
		}
		
	// creates a category
	public Category createCategory(Category category) {
		return categoryRepository.save(category);
	}
	
	// retrieves a category
		public Category findCategory(Long id) {
			Optional<Category> optionalCategory = categoryRepository.findById(id);
			if(optionalCategory.isPresent()) {
				return optionalCategory.get();
			} else {
				return null;
			}
		}
		
		//updates a category
		public Category updateCategory(Category category) {
			return categoryRepository.save(category);
		}
}
