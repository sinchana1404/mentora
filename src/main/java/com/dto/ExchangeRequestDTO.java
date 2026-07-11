package com.dto;

import java.sql.Timestamp;

public class ExchangeRequestDTO {
	private int requestId;
	private int senderId;
	private int receiverId;
	private int offeredSkillId;
	private int requestedSkillId;
	private String message;
	private String status;
	private Timestamp requestDate;
	
	public ExchangeRequestDTO() {
		
	}

	public int getRequestId() {
		return requestId;
	}

	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}

	public int getSenderId() {
		return senderId;
	}

	public void setSenderId(int senderId) {
		this.senderId = senderId;
	}

	public int getReceiverId() {
		return receiverId;
	}

	public void setReceiverId(int receiverId) {
		this.receiverId = receiverId;
	}

	public int getOfferedSkillId() {
		return offeredSkillId;
	}

	public void setOfferedSkillId(int offeredSkillId) {
		this.offeredSkillId = offeredSkillId;
	}

	public int getRequestedSkillId() {
		return requestedSkillId;
	}

	public void setRequestedSkillId(int requestedSkillId) {
		this.requestedSkillId = requestedSkillId;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Timestamp getRequestDate() {
		return requestDate;
	}

	public void setRequestDate(Timestamp requestDate) {
		this.requestDate = requestDate;
	}

	@Override
	public String toString() {
		return "ExchangeRequestDTO [requestId=" + requestId + ", senderId=" + senderId + ", receiverId=" + receiverId
				+ ", offeredSkillId=" + offeredSkillId + ", requestedSkillId=" + requestedSkillId + ", message="
				+ message + ", status=" + status + ", requestDate=" + requestDate + "]";
	}
	
}
