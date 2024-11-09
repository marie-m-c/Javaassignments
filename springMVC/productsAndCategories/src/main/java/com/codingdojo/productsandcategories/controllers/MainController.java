package com.codingdojo.productsandcategories.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.productsandcategories.models.Category;
import com.codingdojo.productsandcategories.models.Product;
import com.codingdojo.productsandcategories.services.CategoryService;
import com.codingdojo.productsandcategories.services.ProductService;

import jakarta.validation.Valid;

@Controller
public class MainController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@GetMapping("/")
	public String home(Model model) {
		model.addAttribute("products", productService.allProducts());
		model.addAttribute("categories", categoryService.allCategories());
		return "index.jsp";
	}
	
	@GetMapping("/products/new")
	public String newProduct(@ModelAttribute("product") Product product) {
		return "addProduct.jsp";
	}
	
	@PostMapping("/products/create")
	public String createProduct(@Valid @ModelAttribute("product") Product product, BindingResult result) {
		if (result.hasErrors()) {
			return "addProduct.jsp";
		}
		productService.createProduct(product);
		return "redirect:/";
	}
	
	@GetMapping("/categories/new")
	public String newCategory(@ModelAttribute("category") Category category) {
		return "addCategory.jsp";
	}
	
	@PostMapping("/categories/create")
	public String createCategory(@Valid @ModelAttribute("category") Category category, BindingResult result) {
		if (result.hasErrors()) {
			return "addCategory.jsp";
		}
		categoryService.createCategory(category);
		return "redirect:/";
	}
	
	@GetMapping("/products/{id}")
	public String addCategory(@PathVariable("id") Long id, Model model) {
		model.addAttribute("product", productService.findProduct(id));
		model.addAttribute("categories", categoryService.allCategories());
		return "product.jsp";
	}
	
	@PostMapping("/products/{id}/addCategory")
	public String updateProductCategories(@RequestParam("categoryId") Long categoryId, @PathVariable("id") Long id) {
		Product product = productService.findProduct(id);
		product.getCategories().add(categoryService.findCategory(categoryId));
		productService.updateProduct(product);
		return "redirect:/products/" + id;
	}
	
	@GetMapping("/categories/{id}")
	public String addProduct(@PathVariable("id") Long id, Model model) {
		model.addAttribute("category", categoryService.findCategory(id));
		model.addAttribute("products", productService.allProducts());
		return "category.jsp";
	}
	
	@PostMapping("/categories/{id}/addProduct")
	public String updateCategoryProducts(@RequestParam("productId") Long productId, @PathVariable("id") Long id) {
		Category category = categoryService.findCategory(id);
		category.getProducts().add(productService.findProduct(productId));
		categoryService.updateCategory(category);
		return "redirect:/categories/" + id;
	}
}
