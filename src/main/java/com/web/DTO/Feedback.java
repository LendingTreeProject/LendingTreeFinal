package com.web.DTO;

import java.time.LocalDate;

public class Feedback {
	
	private String feedback_id;
	private String feedback_query;
	private LocalDate date_posted;
	private String feedback_data;

	public String getFeedback_id() {
		return feedback_id;
	}
	public void setFeedback_id(String feedback_id) {
		this.feedback_id = feedback_id;
	}
	public String getFeedback_query() {
		return feedback_query;
	}
	public void setFeedback_query(String feedback_query) {
		this.feedback_query = feedback_query;
	}
	public LocalDate getDate_posted() {
		return date_posted;
	}
	public void setDate_posted(LocalDate date_posted) {
		this.date_posted = date_posted;
	}
	public String getFeedback_data() {
		return feedback_data;
	}
	public void setFeedback_data(String feedback_data) {
		this.feedback_data = feedback_data;
	}
}
