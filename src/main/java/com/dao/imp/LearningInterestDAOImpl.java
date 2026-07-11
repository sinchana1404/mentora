package com.dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.dao.inf.LearningInterestDAOINF;
import com.dto.LearningInterestDTO;
import com.utility.DBconnection;

public class LearningInterestDAOImpl implements LearningInterestDAOINF {
	  private Connection con;

	    public LearningInterestDAOImpl() {
	        this.con = DBconnection.getConnection();
	    }
	@Override
	public boolean addLearningInterest(LearningInterestDTO interest) {
		 String query = "INSERT INTO learning_interests(user_id, skill_id) VALUES(?,?)";

		    try {

		        PreparedStatement ps = con.prepareStatement(query);

		        ps.setInt(1, interest.getUserId());
		        ps.setInt(2, interest.getSkillId());

		        int result = ps.executeUpdate();

		        return result > 0;

		    } catch (SQLException e) {
		        e.printStackTrace();
		    }

		    return false;
		}

	@Override
	public List<LearningInterestDTO> getLearningInterests(int userId) {
		List<LearningInterestDTO> list = new ArrayList<>();

	    String query = "SELECT * FROM learning_interests WHERE user_id=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(query);

	        ps.setInt(1, userId);

	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {

	            LearningInterestDTO interest = new LearningInterestDTO();

	            interest.setInterestId(rs.getInt("interest_id"));
	            interest.setUserId(rs.getInt("user_id"));
	            interest.setSkillId(rs.getInt("skill_id"));

	            list.add(interest);
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return list;
	}

	@Override
	public boolean deleteLearningInterest(int interestId) {

	    String query = "DELETE FROM learning_interests WHERE interest_id=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(query);

	        ps.setInt(1, interestId);

	        int result = ps.executeUpdate();

	        return result > 0;

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return false;
	}

}
