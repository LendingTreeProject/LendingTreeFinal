package com.web.model;

import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.web.DTO.ForgetPass;
import com.web.DTO.ForgetUID;
import com.web.DTO.Help;

@Component
public class QueryHandler {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public String store(String query) {

		String ticket_id = randomAlphaNumeric(7);
		LocalDate date_posted = LocalDate.now();
		String help_query = query;
		String help_data = "Not yet updated";

		String sql = "insert into help values(?,?,?,?)";
		int count = jdbcTemplate.update(sql, ticket_id, help_query, date_posted, help_data);

		if (count == 0) {
			return null;
		}
		return ticket_id;
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

	public String addHelp(String ticket_id, String help_data) {

		String sql = "update help set help_data=? where ticket_id=?";
		int count = jdbcTemplate.update(sql, help_data, ticket_id);

		if (count == 0) {
			return null;
		}
		return ticket_id;
	}

	public List<Help> getAllQueryList() {
		List<Help> list;
		String sql = "select * from help";
//	list= jdbcTemplate.queryForObject(sql, ArrayList.class);
		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Help>(Help.class));

		System.out.println("You Have following Tickets");
		for (Help help : list) {
			System.out.println(help.getTicket_id());
		}
		return list;
	}

	public List<Help> getAllSolutionList() {
		List<Help> list;
		String sql = "select * from help";
//	list= jdbcTemplate.queryForObject(sql, ArrayList.class);
		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Help>(Help.class));

		System.out.println("You Have following Tickets");
		for (Help help : list) {
			System.out.println(help.getTicket_id());
		}
		return list;
	}
	
	public List<Help> getQueryDetails(String ticket_id) {
		List<Help> list;
		String sql = "select * from help where ticket_id=?";
//	help= jdbcTemplate.queryForObject(sql, Help.class, ticket_id);
		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Help>(Help.class), ticket_id);
		return list;
	}

	public boolean deleteQuery(String ticket_id) {
		String sql = "delete from help where ticket_id = ?";
		int count = jdbcTemplate.update(sql, ticket_id);
		if (count > 0)
			return true;
		return false;
	}

	public int updateHelp(String data, String ticket_id) {
		String sql = "update help set help_data=? where ticket_id = ?";
		int count = jdbcTemplate.update(sql, data, ticket_id);
		return count;
	}

	public String getUID(ForgetUID fid) {
		String sql = "select scrtQue1, scrtQue2, scrtQue3 from user where contact= ?";
		List<ForgetUID> list;
		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<ForgetUID>(ForgetUID.class),fid.getContact());

		String uid;
		String sql1 = "select uid from user where contact=?";
		System.out.println(sql1);
		for (ForgetUID data : list) {
		System.out.println(data.getScrtQue1().equals(fid.getScrtQue1()));
		System.out.println(data.getScrtQue2().equals(fid.getScrtQue2()));
		System.out.println(data.getScrtQue3().equals(fid.getScrtQue3()));
		
			if (data.getScrtQue1().equals(fid.getScrtQue1()) && data.getScrtQue2().equals(fid.getScrtQue2())
					&& data.getScrtQue3().equals(fid.getScrtQue3())) {
				
				Object[] inputs = new Object[] { fid.getContact() };
				uid = (String) jdbcTemplate.queryForObject(sql1, inputs, String.class);

				System.out.println(uid);
				return uid;
			}
		}
		return null;
	}

	public boolean getPass(ForgetPass fPass) {
		String sql = "select scrtQue1, scrtQue2, scrtQue3 from user where uid= ?";
		List<ForgetPass> list;
		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<ForgetPass>(ForgetPass.class),
				fPass.getUid());

		for (ForgetPass data : list) {
			if (data.getScrtQue1().equals(fPass.getScrtQue1()) && data.getScrtQue2().equals(fPass.getScrtQue2())
					&& data.getScrtQue3().equals(fPass.getScrtQue3())) {

				return true;
			}
		}
		return false;
	}
}