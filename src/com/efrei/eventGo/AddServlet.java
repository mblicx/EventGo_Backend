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

public class AddServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		this.doPost(req, resp);

	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		// final String selectSql = "select * from event natural join type
		// natural join place";
		final String addSql = "INSERT INTO event (event_name, place_id, start_date, end_date, state, type_id, description, charge, user_id, start_time, end_time, imageurl, iconurl) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";
		// final String testAddSql = "INSERT INTO test1 (u_id, e_name, Date)
		// VALUES (?, ?, ?) ";
		// final String testSelectSql = "select e_name from test1";

		// PrintWriter out = resp.getWriter();
		resp.setContentType("text/plain");
		String url;
		// int id = Integer.parseInt(req.getParameter("u_id"));
		// String name = req.getParameter("e_name");
		// String nstart_date = req.getParameter("s_date");

		String nevent_name = req.getParameter("event_name");

		int nplace_id = Integer.parseInt(req.getParameter("place_id"));

		int nstate = Integer.parseInt(req.getParameter("state"));
		int ntype_id = Integer.parseInt(req.getParameter("type_id"));
		int ncharge = Integer.parseInt(req.getParameter("charge"));
		int nuser_id = Integer.parseInt(req.getParameter("user_id"));

		String ndes = req.getParameter("description");

		// String nimage = req.getParameter("image");
		// String nicon = req.getParameter("icon");

		String nimage1 = "https://storage.googleapis.com/eventgo-161225.appspot.com/event/0/image_event.png";
		String nicon1 = "https://storage.googleapis.com/eventgo-161225.appspot.com/event/0/icon_event.png";

		String nstart_date = req.getParameter("start_date");

		String nend_date = req.getParameter("end_date");

		String nstart_time = req.getParameter("start_time");

		String nend_time = req.getParameter("end_time");

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

			// PreparedStatement psAdd = conn.prepareStatement(testAddSql);

			PreparedStatement pstmt = conn.prepareStatement(addSql);

			pstmt.setString(1, nevent_name);
			pstmt.setInt(2, nplace_id);
			pstmt.setString(3, nstart_date);
			pstmt.setString(4, nend_date);
			pstmt.setInt(5, nstate);
			pstmt.setInt(6, ntype_id);
			pstmt.setString(7, ndes);

			pstmt.setInt(8, ncharge);
			pstmt.setInt(9, nuser_id);

			pstmt.setString(10, nstart_time);
			pstmt.setString(11, nend_time);

			pstmt.setString(12, nimage1);
			pstmt.setString(13, nicon1);
			pstmt.executeUpdate();
			// psAdd.executeUpdate();
			// out.print("SUCCESS");
			req.setAttribute("info", "alread added!");

			if (nuser_id == 1) {
				resp.sendRedirect("ManageEvents.jsp?uid=" + nuser_id);
			} else {
				resp.sendRedirect("ShowEvent.jsp?uid=" + nuser_id);
			}
		} catch (SQLException e) {
			throw new ServletException("SQL error", e);
		}

	}
}
