package com.codingdojo.exam.controllers;

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

import com.codingdojo.exam.models.Course;
import com.codingdojo.exam.models.LoginUser;
import com.codingdojo.exam.models.User;
import com.codingdojo.exam.services.CourseService;
import com.codingdojo.exam.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class MainController {
	
    @Autowired
    private UserService userService;
    @Autowired
    private CourseService courseService;
    
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
            model.addAttribute("newLogin", new LoginUser());
            return "index.jsp";
        }
        
        session.setAttribute("userId", created.getId());
        session.setAttribute("userName", created.getUserName());
    
        return "redirect:/classes";
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
    
        return "redirect:/classes";
    }
    
    @GetMapping("/classes")
    public String home(Model model, HttpSession session) {
    	if (session.getAttribute("userId") == null ) {
    		return "redirect:/";
    	}
    	model.addAttribute("courses", courseService.allCourses());
    	return "dashboard.jsp";
    }
    
    @GetMapping("/logout")
    String logout(HttpSession session) {
    	session.invalidate();
    	return "redirect:/";
    }
    
    @GetMapping("/classes/new")
    String addBook(Model model, @ModelAttribute Course course, HttpSession session) {
    	if (session.getAttribute("userId") == null ) {
    		return "redirect:/";
    	}
    	model.addAttribute("daysOfWeek", Course.DayOfWeek.values());
    	return "add.jsp";
    }
    
    @PostMapping("/classes/create")
    public String createCourse(@Valid @ModelAttribute Course course, BindingResult result) {
    	if (result.hasErrors()) {
    		return "add.jsp";
    	} else {
    		courseService.createCourse(course);
    		return "redirect:/classes";
    	}
    }
    
    @PostMapping("/classes/{id}/edit")
    public String editCourse(@PathVariable("id") Long id, Model model, HttpSession session) {
    	if (session.getAttribute("userId") == null ) {
    		return "redirect:/";
    	}
    	model.addAttribute("course", courseService.findCourse(id));
    	model.addAttribute("daysOfWeek", Course.DayOfWeek.values());
    	return "edit.jsp";
    }
    
    @PutMapping("/classes/update/{id}")
    public String updateCourse(@Valid @ModelAttribute Course course, BindingResult result, Model model) {
    	if (result.hasErrors()) {
    		model.addAttribute("course", course);
    		model.addAttribute("daysOfWeek", Course.DayOfWeek.values());
    		return "edit.jsp";
    	} else {
    		courseService.updateCourse(course);
    		return "redirect:/classes";
    	}
    }
    
    @DeleteMapping("/classes/{id}/delete")
    public String removeCourse(@PathVariable("id") Long id) {
    	courseService.deleteCourse(id);
    	return "redirect:/classes";
    }
    
    @GetMapping("/classes/{id}")
    public String showCourse(@PathVariable("id") Long id, Model model, HttpSession session) {
    	if (session.getAttribute("userId") == null ) {
    		return "redirect:/";
    	}
    	model.addAttribute("course", courseService.findCourse(id));
    	return "show.jsp";
    }
    
}