package student.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import student.Model.Admin;
import student.Model.Student;
import student.Service.AdminService;
import student.Service.StudentService;

@Controller
public class AdminController {

	@Autowired
	private StudentService studentService;

	@Autowired
	private AdminService adminService;

	@RequestMapping("/adminlogin")
	public String adminloginform() {
		return "AdminLogin";
	}

	@RequestMapping(path = "/adminloginhandle", method = RequestMethod.POST)
	public String adminLogin(@RequestParam String username, @RequestParam String password, Model model) {
		// Call the AdminService to validate login
		Admin admin = adminService.login(username, password);

		if (admin != null) {

			return "redirect:/admin";
		} else {

			model.addAttribute("error", "Invalid username or password");
			return "AdminLogin";
		}
	}

	@RequestMapping("/add-student")
	public String addstudent() {
		return "AddStudent";
	}

	@RequestMapping("/admin")
	public String admin(Model m) {
		List<Student> viewallStudents = studentService.viewallStudents();
		m.addAttribute("all", viewallStudents);
		return "Admin";
	}

	@RequestMapping("/delete/{studentId}")
	public RedirectView deleteProduct(@PathVariable("studentId") int studentId, HttpServletRequest request) {
		studentService.deleterecord(studentId);
		RedirectView rv = new RedirectView();
		rv.setUrl(request.getContextPath() + "/admin");
		return rv;
	}

	@RequestMapping("/update/{studentId}")
	public String updatestudent(@PathVariable("studentId") int studentId, Model m) {
		Student getstu = this.studentService.getstu(studentId);
		m.addAttribute("getstudent", getstu);
		return "UpdateStudent";
	}
}
