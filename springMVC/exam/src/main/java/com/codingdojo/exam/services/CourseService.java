package com.codingdojo.exam.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.exam.models.Course;
import com.codingdojo.exam.repositories.CourseRepository;

@Service
public class CourseService {
		
	  @Autowired
	  private CourseRepository courseRepository;
	 
	 // returns all the courses
	 public List<Course> allCourses() {
	     return courseRepository.findAll();
	 }
	 // creates a course
	 public Course createCourse(Course course) {
	     return courseRepository.save(course);
	 }
	 // retrieves a course
	 public Course findCourse(Long id) {
	     Optional<Course> optionalCourse = courseRepository.findById(id);
	     if(optionalCourse.isPresent()) {
	         return optionalCourse.get();
	     } else {
	         return null;
	     }
	 }
	//updates a course
	public Course updateCourse(Course course) {
	   return courseRepository.save(course);
	}
	//deletes a course
	public void deleteCourse(Long id) {
		courseRepository.deleteById(id);
	}
}
