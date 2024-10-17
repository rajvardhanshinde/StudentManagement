package student.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import student.Dao.AdminDao;
import student.Model.Admin;

@Service
public class AdminService {

    @Autowired
    private AdminDao adminDao;

    public Admin login(String username, String password) {
        return adminDao.Adminlogin(username, password);
    }
}
