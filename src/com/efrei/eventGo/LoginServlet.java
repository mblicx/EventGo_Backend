package com.efrei.eventGo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		this.doPost(req, resp);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		final String selectSql = "select user_id from user where user_name=? and user_code=?";

		PrintWriter out = resp.getWriter();
		resp.setContentType("text/plain");

		String name = req.getParameter("user_name");
		String code = req.getParameter("password");
		int id;

		String url;
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
			PreparedStatement pstmt = conn.prepareStatement(selectSql);
			pstmt.setString(1, name);
			pstmt.setString(2, code);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				id = rs.getInt(1);
				if (id == 1) {
					req.setAttribute("info", id);
					resp.sendRedirect("ManageEvents.jsp?uid=" + id);

				} else {
					req.setAttribute("info", id);
					resp.sendRedirect("ShowEvent.jsp?uid=" + id);
				}

			} else {
				out.print(
						"<script language=javascript>alert('user_name or password is WRONG');history.go(-1);</script>");
				// resp.sendRedirect("login.jsp");
			}
		} catch (SQLException e) {
			throw new ServletException("SQL error", e);
		}
	}

}