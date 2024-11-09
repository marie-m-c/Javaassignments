package com.codingdojo.productsandcategories.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.productsandcategories.models.Product;
import com.codingdojo.productsandcategories.repositories.ProductRepository;

@Service
public class ProductService {
	
	@Autowired
	ProductRepository productRepository;
	
	// returns all the products
	public List<Product> allProducts() {
		return productRepository.findAll();
	}

	// creates a product
	public Product createProduct(Product product) {
		return productRepository.save(product);
	}
	
	// retrieves a product
	public Product findProduct(Long id) {
		Optional<Product> optionalProduct = productRepository.findById(id);
		if(optionalProduct.isPresent()) {
			return optionalProduct.get();
		} else {
			return null;
		}
	}
	
	//updates a product
		public Product updateProduct(Product product) {
		   return productRepository.save(product);
		}
}
