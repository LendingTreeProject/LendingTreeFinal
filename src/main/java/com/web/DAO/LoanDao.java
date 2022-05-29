package com.web.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.web.DTO.Agent;
import com.web.DTO.Help;
import com.web.DTO.LoanApplication;

@Component
public class LoanDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int save(LoanApplication loan) { 

		loan.setReqid(randomAlphaNumeric(7));
//		LocalDate date_posted = LocalDate.now();
		System.out.println(loan.toString());
		String sql = "INSERT INTO loan (reqid, fname, lname, dob, gender, contact, email, uid, loantype, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		int result = jdbcTemplate.update(sql,loan.getReqid(), loan.getFname(),loan.getLname(), loan.getDob(), loan.getGender(), loan.getContact(), loan.getEmail(), loan.getUid(), loan.getLoantype(), loan.getStatus());
	
		return result;
	}
	
	private static final String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

	public static String randomAlphaNumeric(int count) {
		StringBuilder builder = new StringBuilder();
		while (count-- != 0) {
			int character = (int) (Math.random() * ALPHA_NUMERIC_STRING.length());
			builder.append(ALPHA_NUMERIC_STRING.charAt(character));
		}
		return builder.toString();
	}
	
	public List<LoanApplication> loanRequests() {
		List<LoanApplication> list;
		String sql = "select * from loan";

		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<LoanApplication>(LoanApplication.class));

		/*
		 * System.out.println("You Have following loan Requests"); for (LoanApplication
		 * loan : list) { System.out.println(loan.toString()); }
		 */
		return list;
	}
	public List<LoanApplication> loanRequests(String uid) {
		List<LoanApplication> list;
		String sql = "select * from loan where uid=?";
		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<LoanApplication>(LoanApplication.class), uid);
		
		return list;
	}
	public List<LoanApplication> loanRequests(String fromdate,String todate,String status) {
		List<LoanApplication> list;
		String sql = "SELECT * FROM `loan` WHERE status=? AND  convert (dob,DATE) between ? AND ?";
		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<LoanApplication>(LoanApplication.class), status,fromdate,todate);
		
		return list;
	}

	public List<LoanApplication> getLoanDetails(String reqid) {
		List<LoanApplication> list;
		String sql = "select * from loan where reqid=?";
		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<LoanApplication>(LoanApplication.class), reqid);
		return list;
	}

	public int delete(String reqid) {
		String sql = "delete from loan where reqid = ?";
		int count = jdbcTemplate.update(sql, reqid);
		return count;
	}

	public int updateLoanStatus(String reqid, String action) {

			String sql = "update loan set status=? where reqid=?";
			int count = jdbcTemplate.update(sql, action, reqid);
			
			return count;
	}

	public List<LoanApplication> apprvedLoans() {
		List<LoanApplication> list;
		String status="approve";
		String sql = "select * from loan where status=?";

		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<LoanApplication>(LoanApplication.class), status);

		return list;
	}
	
	public List<LoanApplication> pickupLoans() {
		List<LoanApplication> list;
		String status="pick_up";
		String sql = "select * from loan where status=?";

		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<LoanApplication>(LoanApplication.class), status);

		return list;
	}
	
	public List<LoanApplication> verifLoans() {
		List<LoanApplication> list;
		String status="verification_dept";
		String sql = "select * from loan where status=?";

		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<LoanApplication>(LoanApplication.class), status);

		return list;
	}
	
	public List<LoanApplication> LegalLoans() {
		List<LoanApplication> list;
		String status="legal_dept";
		String sql = "select * from loan where status=?";

		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<LoanApplication>(LoanApplication.class), status);

		return list;
	}

	public List<Agent> pick_upAgents(String cat) {
		List<Agent> list;
		String sql = "select * from agent where category=?";

		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Agent>(Agent.class), cat);

		return list;
	}

	public int assignpickupagent(String reqid, String aid) {
		String sql = "INSERT INTO pickup_dept (reqid, aid) VALUES (?, ?)";

		int result = jdbcTemplate.update(sql,reqid, aid);
	
		return result;
	}

	public List<LoanApplication> rejectedLoans() {
			List<LoanApplication> list;
			String status="reject";
			String sql = "select * from loan where status=?";

			list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<LoanApplication>(LoanApplication.class), status);

			return list;
		}

	public List<LoanApplication> verifiedLoans() {
		// TODO Auto-generated method stub
		return null;
	}
}