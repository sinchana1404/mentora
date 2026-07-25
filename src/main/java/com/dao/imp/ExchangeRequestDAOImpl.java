package com.dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.dao.inf.ExchangeRequestDAOINF;
import com.dto.ExchangeRequestDTO;
import com.utility.DBconnection;

public class ExchangeRequestDAOImpl implements ExchangeRequestDAOINF {
	private Connection con;

	public ExchangeRequestDAOImpl() {
		this.con = DBconnection.getConnection();
	}
	@Override
	public boolean sendRequest(ExchangeRequestDTO request) {
		String query = "INSERT INTO exchange_requests(sender_id, receiver_id, offered_skill_id, requested_skill_id, message, status, request_date) VALUES(?,?,?,?,?,?,now())";

		try {

			PreparedStatement ps = con.prepareStatement(query);

			ps.setInt(1, request.getSenderId());
			ps.setInt(2, request.getReceiverId());
			ps.setInt(3, request.getOfferedSkillId());
			ps.setInt(4, request.getRequestedSkillId());
			ps.setString(5, request.getMessage());
			ps.setString(6, request.getStatus());
			

			int result = ps.executeUpdate();

			return result > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean acceptRequest(int requestId) {
		String query = "UPDATE exchange_requests SET status='Accepted' WHERE request_id=?";

		try {

			PreparedStatement ps = con.prepareStatement(query);

			ps.setInt(1, requestId);

			int result = ps.executeUpdate();

			return result > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean rejectRequest(int requestId) {
		String query = "UPDATE exchange_requests SET status='Rejected' WHERE request_id=?";

		try {

			PreparedStatement ps = con.prepareStatement(query);

			ps.setInt(1, requestId);

			int result = ps.executeUpdate();

			return result > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public List<ExchangeRequestDTO> getAllRequests() {
		List<ExchangeRequestDTO> list = new ArrayList<>();

		String query = "SELECT * FROM exchange_requests";

		try {

			PreparedStatement ps = con.prepareStatement(query);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ExchangeRequestDTO request = new ExchangeRequestDTO();
				request.setRequestId(rs.getInt("request_id"));
				request.setSenderId(rs.getInt("sender_id"));
				request.setReceiverId(rs.getInt("receiver_id"));
				request.setOfferedSkillId(rs.getInt("offered_skill_id"));
				request.setRequestedSkillId(rs.getInt("requested_skill_id"));
				request.setMessage(rs.getString("message"));
				request.setStatus(rs.getString("status"));
				request.setRequestDate(rs.getTimestamp("request_date"));

				list.add(request);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}
	@Override
	public List<ExchangeRequestDTO> getAllRequestsByStatus(String status) {
		List<ExchangeRequestDTO> list = new ArrayList<>();

		String query = "SELECT * FROM exchange_requests where status = ?";

		try {

			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, status);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ExchangeRequestDTO request = new ExchangeRequestDTO();
				request.setRequestId(rs.getInt("request_id"));
				request.setSenderId(rs.getInt("sender_id"));
				request.setReceiverId(rs.getInt("receiver_id"));
				request.setOfferedSkillId(rs.getInt("offered_skill_id"));
				request.setRequestedSkillId(rs.getInt("requested_skill_id"));
				request.setMessage(rs.getString("message"));
				request.setStatus(rs.getString("status"));
				request.setRequestDate(rs.getTimestamp("request_date"));

				list.add(request);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}
	@Override
	public void deleteRequest(int requestId) {
		// TODO Auto-generated method stub
		String query = "delete FROM exchange_requests where request_id=?";

		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, requestId);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	

}
