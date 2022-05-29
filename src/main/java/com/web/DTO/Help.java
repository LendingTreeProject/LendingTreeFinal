package com.web.DTO;

import java.time.LocalDate;

public class Help {
	
	private String ticket_id;
	private String help_query;
	private LocalDate date_posted;
	private String help_data;

	public String getTicket_id() {
		return ticket_id;
	}
	public void setTicket_id(String ticket_id) {
		this.ticket_id = ticket_id;
	}
	public String getHelp_query() {
		return help_query;
	}
	public void setHelp_query(String help_query) {
		this.help_query = help_query;
	}
	public LocalDate getDate_posted() {
		return date_posted;
	}
	public void setDate_posted(LocalDate date_posted) {
		this.date_posted = date_posted;
	}
	public String getHelp_data() {
		return help_data;
	}
	public void setHelp_data(String help_data) {
		this.help_data = help_data;
	}
}
