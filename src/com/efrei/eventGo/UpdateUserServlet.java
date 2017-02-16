package com.efrei.eventGo;

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")

public class UpdateUserServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		this.doPost(req, resp);

	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		// final String selectSql = "select * from event natural join type
		// natural join place";
		// final String addSql = "INSERT INTO event (event_name, place_id,
		// start_date, end_date, state, type_id, description, charge, user_id,
		// start_time, end_time, imageurl) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
		// ?, ?) ";
		final String updateSql = "UPDATE user SET user_name = ?, user_code = ?, user_type = ?  WHERE user_id = ?";
		// final String testAddSql = "INSERT INTO test1 (u_id, e_name, Date)
		// VALUES (?, ?, ?) ";
		// final String testSelectSql = "select e_name from test1";

		//PrintWriter out = resp.getWriter();
		resp.setContentType("text/plain");
		String url;
		// int id = Integer.parseInt(req.getParameter("u_id"));
		// String name = req.getParameter("e_name");
		// String nstart_date = req.getParameter("s_date");

		String user_id = req.getParameter("user_id");
		String name = req.getParameter("user_name");
		String code = req.getParameter("user_code");
		String type = req.getParameter("user_type");
		String man_id = req.getParameter("manager_id");

		if (System.getProperty("com.google.appengine.runtime.version").startsWith("Google App Engine/")) {
			// Check the System properties to determine if we are running on
			// appengine or not
			// Google App Engine sets a few system properties that will reliably
			// be present on a remote
			// instance.
			url = System.getProperty("ae-cloudsql.cloudsql-database-url");
			try {
				// Load the class that provides the new "jdbc:google:mysql://"
				// prefix.
				Class.forName("com.mysql.jdbc.GoogleDriver");
			} catch (ClassNotFoundException e) {
				throw new ServletException("Error loading Google JDBC Driver", e);
			}
		} else {
			// Set the url with the local MySQL database connection url when
			// running locally
			url = System.getProperty("ae-cloudsql.local-database-url");
		}
		log("connecting to: " + url);

		try (Connection conn = DriverManager.getConnection(url);) {

			PreparedStatement pstmt = conn.prepareStatement(updateSql);

			pstmt.setString(1, name);
			pstmt.setString(2, code);
			pstmt.setString(3, type);
			pstmt.setString(4, user_id);

			pstmt.executeUpdate();

			resp.sendRedirect("ManageEvents.jsp?uid=" + man_id);

		} catch (SQLException e) {
			throw new ServletException("SQL error", e);
		}

	}
}
