package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import utils.DbUtils;

public class UserDAO {

	public boolean register(String username, String password, String confirm) {
		boolean bl = false;

		try {
			Connection conn = DbUtils.getConnection();
			if (password.equals(confirm.toString())) {
				PreparedStatement ps = conn.prepareStatement("insert into user(username, password) value(?, ?)");
				ps.setString(1, username);
				ps.setString(2, password);
				ps.executeUpdate();
				bl = true;
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bl;
	}

	public boolean login(String username, String password) {
		boolean bl = false;
		try {
			Connection conn = DbUtils.getConnection();
			Statement st = conn.createStatement();
			ResultSet rss = st.executeQuery("select username, password from user where username ='" + username + "'"
					+ " and password ='" + password + "'");
			if (rss.next()) {
				bl = true;
			}
		} catch (SQLException e) {

		}
		return bl;
	}
}
