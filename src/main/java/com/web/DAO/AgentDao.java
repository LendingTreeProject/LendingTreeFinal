package com.web.DAO;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.web.DTO.Agent;
import com.web.DTO.Pickup_dept;

@Component
public class AgentDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void save(Agent agent) { 
		System.out.println("agent created");
		
		String sql = "INSERT INTO agent (fname, lname, dob, gender, contact, email, aid,password,dept, category, scrtQue1, scrtQue2, scrtQue3) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		int result = jdbcTemplate.update(sql,agent.getFname(),agent.getLname(), agent.getDob(), agent.getGender(), agent.getContact(), agent.getEmail(), agent.getAid(), agent.getPassword(), agent.getDept(), agent.getCategory(), agent.getScrtQue1(), agent.getScrtQue2(), agent.getScrtQue3());
	        
	        if (result > 0) {
	            System.out.println("A new row has been inserted.");
	        }else {
	        	System.out.println("Data is not inserted");
			}
	}
//	public String getUserCategory(String uid) {
//		// TODO Auto-generated method stub
//		return null;
//	}

	public List<Pickup_dept> getPickUpLists(String aid) {
		List<Pickup_dept> list;
		String sql = "select * from pickup_dept where aid=?";

		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Pickup_dept>(Pickup_dept.class), aid);

		return list;
	}
	
public String getAgentCategory(String aid) {
		
		String sql="select category from agent where aid=?";
		String category = (String) jdbcTemplate.queryForObject(
	            sql, String.class, aid);

		return category;
	}
}
