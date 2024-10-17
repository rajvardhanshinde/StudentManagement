package student.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import student.Dao.StudentDao;
import student.Model.Student;

@Service
public class StudentService {

	@Autowired
	private StudentDao studentDao;
	
	
	public void createStudent(Student student) { 
		
		 this.studentDao.saveStudent(student);
		
	}
	public List<Student> viewallStudents(){
		
		return this.studentDao.getallstudent();
	}
	public void deleterecord(int sid) {
		
		this.studentDao.deletestudent(sid);
	}
	
	public Student getstu(int sid) {
		
		return this.studentDao.getstudent(sid);
		
	}
	
	public Student login(String email, String password) {  
        
        return this.studentDao.login(email, password); // Return the student object (null if not found)
    }
	
	
}
