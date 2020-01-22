package com.neo.springjspdemo.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.neo.springjspdemo.model.Student;
import com.neo.springjspdemo.repository.StudentRepository;

@Controller
@RequestMapping("/students")
public class StudentController {
	
	private final StudentRepository studentRepository;

	@Autowired
	public StudentController(StudentRepository studentRepository) {
		this.studentRepository = studentRepository;
	}
	
	@GetMapping("/{id}")
	public String findById(@PathVariable("id") Long id, Map<String, Object> model) {
		model.put("student", studentRepository.findById(id).get());
		return "student";
	}
	
	@RequestMapping({"", "/"})
	public String index(Map<String, Object> model) {
		model.put("students", studentRepository.findAll());
		return "test";
	}
	
	@RequestMapping("/createNewStudent")
	public String createStudent(Map<String, Object> model) {
		model.put("student", new Student());
		return "createOrUpdateStudent";
	}
	
	@PostMapping("/new")
	public String createNewStudent(@Valid @ModelAttribute("student") Student student) {
		if(student == null) {
			return "test";
		}
		studentRepository.save(student);
		return "redirect:/students/"+student.getId();
	}
	
	@RequestMapping("/update/{id}")
	public String updateStudent(@PathVariable("id") Long id, Map<String, Object> model){
		model.put("student", studentRepository.findById(id).get());
		model.put("id", id);
		return "update";
	}
	
	@PostMapping("/processUpdate")
	public String processUpdateStudent(@RequestParam("id") Long id, @Valid Student student) {
		Student student1 = studentRepository.findById(id).get();
		if(student1 == null) {
			return "test";
		}
		
		student1.setFirstName(student.getFirstName());
		student1.setLastName(student.getLastName());
		
		studentRepository.save(student1);
		return "redirect:/students/"+student.getId();
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id) {
		studentRepository.deleteById(id);
		return "redirect:/students/";
	}
	

}
