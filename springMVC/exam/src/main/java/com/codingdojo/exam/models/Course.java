package com.codingdojo.exam.models;

import java.math.BigDecimal;
import java.time.LocalTime;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name="courses")
public class Course {
	public enum DayOfWeek {
		Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
	}
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@NotBlank(message="Name is required")
	private String name;
	
	@NotNull(message="Day is required")
	@Enumerated(EnumType.STRING)
	private DayOfWeek day;
	
	@NotNull(message="Price is required")
    @DecimalMin(value = "0.0", inclusive = true, message = "Price must be a positive value")
    private BigDecimal price;
	
	@NotNull
	@DateTimeFormat(pattern = "h:mm a")
	private LocalTime time;
	
	@NotBlank(message="Description is required")
	@Column(columnDefinition="TEXT")
	private String description;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="user_id")
	private User user;
	
	public Course () {}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public DayOfWeek getDay() {
		return day;
	}

	public void setDay(DayOfWeek day) {
		this.day = day;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public LocalTime getTime() {
		return time;
	}

	public void setTime(LocalTime time) {
		this.time = time;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	private String getAbbreviation(DayOfWeek day) {
		switch(day) {
			case Monday: return "Mon";
			case Tuesday: return "Tues";
			case Wednesday: return "Wednes";
			case Thursday: return "Thurs";
			case Friday: return "Fri";
			case Saturday: return "Sat";
			case Sunday: return "Sun";
			default: return "";
		}
	}
	
	public String getAbbrevDay() {
		return getAbbreviation(day);
	}
}
