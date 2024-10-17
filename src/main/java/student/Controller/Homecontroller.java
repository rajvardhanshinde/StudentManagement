package student.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import student.Model.Student;
import student.Service.StudentService;

@Controller
public class Homecontroller {

	@Autowired
	private StudentService studentService;

	@RequestMapping("/")
	public String home() {
		
		return "Home";
	}
	
	
	@RequestMapping("/studentlogin")
	public String loginpage() {

		return "StudentLogin";
	}

	@RequestMapping("/register")
	public String register() {

		return "register";
	}

	@RequestMapping(path = "/processregister", method = RequestMethod.POST)
	public String handleregister(@ModelAttribute Student student, Model model) {
		System.out.print(student);
		
		this.studentService.createStudent(student);
		
		return "StudentLogin";
	}
	

	
	@RequestMapping(path = "/loginhandle", method = RequestMethod.POST)
	public String login(@RequestParam String email, @RequestParam String password, Model model) {

// Call the service method to login
		Student student = studentService.login(email, password);

		if (student != null) {
			model.addAttribute("student", student);
			return "dashboard"; 
		} else {

			model.addAttribute("error", "Invalid email or password");
			return "StudentLogin"; 
		}
	}

}
