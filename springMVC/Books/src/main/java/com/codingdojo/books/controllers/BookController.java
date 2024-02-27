package com.codingdojo.books.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.codingdojo.books.models.Book;
import com.codingdojo.books.services.BookService;

@Controller
public class BookController {
	 @Autowired
	 private BookService bookService;

	 @GetMapping("/books/{id}")
	 public String showBook(@PathVariable Long id, Model model) {
		 Book book = bookService.findBook(id);
		 model.addAttribute("book", book);
		 return "/books/show.jsp";
	 }

	 @GetMapping("/books")
	 public String index(Model model) {
	     List<Book> books = bookService.allBooks();
	     model.addAttribute("books", books);
	     return "/books/index.jsp";
	 }
}
