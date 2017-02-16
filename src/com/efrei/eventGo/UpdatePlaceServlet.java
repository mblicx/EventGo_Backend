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

public class UpdatePlaceServlet extends HttpServlet {

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
		final String updateSql = "UPDATE place SET coordinates_y = ?, coordinates_x = ?, postcode = ?, address = ?  WHERE place_id = ?";
		// final String testAddSql = "INSERT INTO test1 (u_id, e_name, Date)
		// VALUES (?, ?, ?) ";
		// final String testSelectSql = "select e_name from test1";

		//PrintWriter out = resp.getWriter();
		resp.setContentType("text/plain");
		String url;
		// int id = Integer.parseInt(req.getParameter("u_id"));
		// String name = req.getParameter("e_name");
		// String nstart_date = req.getParameter("s_date");

		int pid = Integer.parseInt(req.getParameter("place_id"));
		String y = req.getParameter("coordinates_y");
		String x = req.getParameter("coordinates_x");

		String post = req.getParameter("postcode");
		String add = req.getParameter("address");
		String uid = req.getParameter("user_id");

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

			pstmt.setString(1, y);
			pstmt.setString(2, x);
			pstmt.setString(3, post);
			pstmt.setString(4, add);
			pstmt.setInt(5, pid);

			pstmt.executeUpdate();
			if (uid.equals("1")) {
				resp.sendRedirect("ManageEvents.jsp?uid=" + uid);
			} else {
				resp.sendRedirect("ShowEvent.jsp?uid=" + uid);
			}

			// resp.sendRedirect("ManageEvents.jsp?uid=" + uid);

		} catch (SQLException e) {
			throw new ServletException("SQL error", e);
		}

	}
}
