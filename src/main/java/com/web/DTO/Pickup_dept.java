package com.web.DTO;

public class Pickup_dept {
	private String aid;
	private String reqid;
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getReqid() {
		return reqid;
	}
	public void setReqid(String reqid) {
		this.reqid = reqid;
	}
	@Override
	public String toString() {
		return "Pickup_dept [aid=" + aid + ", reqid=" + reqid + "]";
	}
}
