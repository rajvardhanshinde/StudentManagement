package student.Dao;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import student.Model.Admin;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public class AdminDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    // Login method using username and password
    public Admin Adminlogin(String username, String password) {
        String query = "FROM Admin a WHERE a.username = :username AND a.password = :password";
        List<Admin> admins = (List<Admin>) hibernateTemplate.execute(session -> {
            Query<Admin> q = session.createQuery(query, Admin.class);
            q.setParameter("username", username);
            q.setParameter("password", password);
            return q.list();
        });

        if (!admins.isEmpty()) {
            return admins.get(0); // Return the first matched Admin
        }
        return null; // Return null if no Admin is found
    }
}
