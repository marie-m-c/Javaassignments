package com.codingdojo.bookclub.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.codingdojo.bookclub.models.Book;
import com.codingdojo.bookclub.models.LoginUser;
import com.codingdojo.bookclub.models.User;
import com.codingdojo.bookclub.services.BookService;
import com.codingdojo.bookclub.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class MainController {
	
    @Autowired
    private UserService userService;
    @Autowired
    private BookService bookService;
    
    @GetMapping("/")
    public String index(Model model) {
    
        // Bind empty User and LoginUser objects to the JSP
        // to capture the form input
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "index.jsp";
    }
    
    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, 
            BindingResult result, Model model, HttpSession session) {
        
        User created = userService.register(newUser, result);
        
        if(result.hasErrors()) {
            // Be sure to send in the empty LoginUser before 
            // re-rendering the page.
            model.addAttribute("newLogin", new LoginUser());
            return "index.jsp";
        }
        
        session.setAttribute("userId", created.getId());
        session.setAttribute("userName", created.getUserName());
    
        return "redirect:/books";
    }
    
    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
            BindingResult result, Model model, HttpSession session) {
        
        User user = userService.login(newLogin, result);
    
        if(result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "index.jsp";
        }
    
        session.setAttribute("userId", user.getId());
        session.setAttribute("userName", user.getUserName());
    
        return "redirect:/books";
    }
    
    @GetMapping("/books")
    public String home(HttpSession session, Model model) {
    	if (session.getAttribute("userId") == null ) {
    		return "redirect:/";
    	}
    	model.addAttribute("books", bookService.allBooks());
    	return "dashboard.jsp";
    }
    
    @GetMapping("/logout")
    String logout(HttpSession session) {
    	session.invalidate();
    	return "redirect:/";
    }
    
    @GetMapping("/books/new")
    public String addBook(@ModelAttribute Book book, HttpSession session) {
    	if (session.getAttribute("userId") == null ) {
    		return "redirect:/";
    	}
    	return "create.jsp";
    }
    
    @PostMapping("/books/create")
    public String createBook(@Valid @ModelAttribute Book book, BindingResult result) {
    	if (result.hasErrors()) {
    		return "create.jsp";
    	} else {
    		bookService.createBook(book);
    		return "redirect:/books";
    	}
    }
    
    @GetMapping("/books/{id}")
    public String showBook(@PathVariable("id") Long id, Model model, HttpSession session) {
    	if (session.getAttribute("userId") == null ) {
    		return "redirect:/";
    	}
    	model.addAttribute("book", bookService.findBook(id));
    	return "show.jsp";
    }
    
    @PostMapping("/books/{id}/edit")
    public String editBook(@PathVariable("id") Long id, Model model, HttpSession session) {
    	if (session.getAttribute("userId") == null ) {
    		return "redirect:/";
    	}
    	model.addAttribute("book", bookService.findBook(id));
    	return "edit.jsp";
    }
    
    @PutMapping("/books/update/{id}")
    public String updateBook(@Valid @ModelAttribute Book book, BindingResult result, Model model) {
    	if (result.hasErrors()) {
    		model.addAttribute("book", book);
    		return "edit.jsp";
    	} else {
    		bookService.updateBook(book);
    		return "redirect:/books";
    	}
    }
    
    @DeleteMapping("/books/{id}/delete")
    public String removeBook(@PathVariable("id") Long id) {
    	bookService.deleteBook(id);
    	return "redirect:/books";
    }
}
