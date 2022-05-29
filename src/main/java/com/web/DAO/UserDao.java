package com.web.DAO;

import java.sql.ResultSet;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.web.DTO.LoanApplication;
import com.web.DTO.User;

@Component
public class UserDao implements Dao<User> {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<User> getAll() {

		return null;
	}

	@Override
	public void save(User user) {
		System.out.println("User created");

		String sql = "INSERT INTO user (fname, lname, dob, gender, contact, email, uid,password,category, scrtQue1, scrtQue2, scrtQue3) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
//         System.out.println(sql);
//         System.out.println(user.getFname()+user.getLname()+ user.getDob()+ user.getGender()+ user.getContact()+ user.getEmail()+ user.getUid()+ user.getPassword()+ user.getCategory());
//	       System.out.println(jdbcTemplate==null);

		int result = jdbcTemplate.update(sql, user.getFname(), user.getLname(), user.getDob(), user.getGender(),
				user.getContact(), user.getEmail(), user.getUid(), user.getPassword(), user.getCategory(),
				user.getScrtQue1(), user.getScrtQue2(), user.getScrtQue3());

		if (result > 0) {
			System.out.println("A new row has been inserted.");
		} else {
			System.out.println("Data is not inserted");
		}
	}

	@Override
	public void update(User t, String[] params) {
	}

	@Override
	public Optional<User> get(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(User t) {
	}

	public String getUserCategory(String uid) {

		String sql = "select category from user where uid=?";
		String category = (String) jdbcTemplate.queryForObject(sql, String.class, uid);

		return category;
	}

	public User getUser(String uid) {

		String sql = "select * from user where uid=?";
		/* User user = (User) jdbcTemplate.queryForObject(sql, User.class, uid); */
	    User a = (User) jdbcTemplate.queryForObject(sql, new Object[]{uid}, new BeanPropertyRowMapper(User.class));
		return a;
	}
}
