package com.web.model;

import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.web.DTO.Feedback;


@Component
public class FeedbackHandler {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public String store(String feedback) {

		String feedback_id = randomAlphaNumeric(7);
		LocalDate date_posted = LocalDate.now();
		String feedback_query = feedback;
		String feedback_data = "Not yet updated";

		String sql = "insert into feedback values(?,?,?,?)";
		int count = jdbcTemplate.update(sql, feedback_id, feedback_query, date_posted, feedback_data);

		if (count == 0) {
			return null;
		}
		return feedback_id;
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

	public String addFeedback(String feedback_id, String feedback_data) {

		String sql = "update feedback set feedback_data=? where feedback_id=?";
		int count = jdbcTemplate.update(sql, feedback_data, feedback_id);

		if (count == 0) {
			return null;
		}
		return feedback_id;
	}

	public List<Feedback> getAllFeedbackList() {
		List<Feedback> list;
		String sql = "select * from feedback";
//	list= jdbcTemplate.queryForObject(sql, ArrayList.class);
		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Feedback>(Feedback.class));

		System.out.println("You Have following Feedback");
		for (Feedback feedback : list) {
			System.out.println(feedback.getFeedback_id());
		}
		return list;
	}

	public List<Feedback> getAllFeedSolutionList() {
		List<Feedback> list;
		String sql = "select * from feedback";
//	list= jdbcTemplate.queryForObject(sql, ArrayList.class);
		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Feedback>(Feedback.class));

		System.out.println("You Have following Tickets");
		for (Feedback feedback : list) {
			System.out.println(feedback.getFeedback_id());
		}
		return list;
	}
	
	public List<Feedback> getFeedbackDetails(String feedback_id) {
		List<Feedback> list;
		String sql = "select * from feedback where feedback_id=?";
//	help= jdbcTemplate.queryForObject(sql, Help.class, ticket_id);
		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Feedback>(Feedback.class), feedback_id);
		return list;
	}

	public boolean deleteFeedback(String feedback_id) {
		String sql = "delete from feedback where feedback_id = ?";
		int count = jdbcTemplate.update(sql, feedback_id);
		if (count > 0)
			return true;
		return false;
	}

	public int updateFeedback(String data, String feedback_id) {
		String sql = "update feedback set feedback_data=? where feedback_id = ?";
		int count = jdbcTemplate.update(sql, data, feedback_id);
		return count;
	}
}