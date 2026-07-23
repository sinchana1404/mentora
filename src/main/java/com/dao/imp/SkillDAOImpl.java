package com.dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.dao.inf.SkillDAOINF;
import com.dto.SkillDTO;
import com.utility.DBconnection;

public class SkillDAOImpl implements SkillDAOINF {
	private Connection con;

	public SkillDAOImpl() {
		this.con = DBconnection.getConnection();
	}
	@Override
	public boolean addSkill(SkillDTO skill) {
		String query = "INSERT INTO skills(skill_name, category) VALUES(?,?)";

		try {

			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, skill.getSkillName());
			ps.setString(2, skill.getCategory());

			int result = ps.executeUpdate();

			return result > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public List<SkillDTO> getAllSkills() {

		List<SkillDTO> list = new ArrayList<>();

		String query = "SELECT * FROM skills";

		try {

			PreparedStatement ps = con.prepareStatement(query);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				SkillDTO skill = new SkillDTO();

				skill.setSkillId(rs.getInt("skill_id"));
				skill.setSkillName(rs.getString("skill_name"));
				skill.setCategory(rs.getString("category"));

				list.add(skill);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public boolean updateSkill(SkillDTO skill) {
		String query = "UPDATE skills SET skill_name=?, category=? WHERE skill_id=?";

		try {

			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, skill.getSkillName());
			ps.setString(2, skill.getCategory());
			ps.setInt(3, skill.getSkillId());

			int result = ps.executeUpdate();

			return result > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean deleteSkill(int skillId) {
		String query = "DELETE FROM skills WHERE skill_id=?";

		try {

			PreparedStatement ps = con.prepareStatement(query);

			ps.setInt(1, skillId);

			int result = ps.executeUpdate();

			return result > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	@Override
	public SkillDTO getSkillById(int skillId) {

		SkillDTO skill = null;
		String query = "SELECT * FROM skills where Skill_id = ?";

		try {

			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, skillId);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				
				skill = new SkillDTO();
				skill.setSkillId(rs.getInt("skill_id"));
				skill.setSkillName(rs.getString("skill_name"));
				skill.setCategory(rs.getString("category"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return skill;
	}

}
