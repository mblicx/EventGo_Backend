package com.efrei.eventGo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


@SuppressWarnings("serial")
public class GetEventsServlet extends HttpServlet {
	@Override
	  public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException,
	      ServletException {
	   
	    final String selectSql = "select * from event natural join type natural join place";
	       

	    PrintWriter out = resp.getWriter();
	    resp.setContentType("text/plain");
	    String url;
	    if (System
	        .getProperty("com.google.appengine.runtime.version").startsWith("Google App Engine/")) {
	      // Check the System properties to determine if we are running on appengine or not
	      // Google App Engine sets a few system properties that will reliably be present on a remote
	      // instance.
	      url = System.getProperty("ae-cloudsql.cloudsql-database-url");
	      try {
	        // Load the class that provides the new "jdbc:google:mysql://" prefix.
	        Class.forName("com.mysql.jdbc.GoogleDriver");
	      } catch (ClassNotFoundException e) {
	        throw new ServletException("Error loading Google JDBC Driver", e);
	      }
	    } else {
	      // Set the url with the local MySQL database connection url when running locally
	      url = System.getProperty("ae-cloudsql.local-database-url");
	    }
	    log("connecting to: " + url);
	   

	      try (Connection conn = DriverManager.getConnection(url);
	    		  ResultSet rs = conn.prepareStatement(selectSql).executeQuery()) {
	      
	    	  List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
	          ResultSetMetaData md = rs.getMetaData();
	          int columnCount = md.getColumnCount();
	          while (rs.next()) {
	              Map<String, Object> rowData = new HashMap<String, Object>();
	              for (int i = 1; i <= columnCount; i++) {
	                  rowData.put(md.getColumnName(i), rs.getObject(i));
	              }
	              list.add(rowData);
	          }	  
	          Gson gson = new Gson();
	          String s2 = gson.toJson(list); 
	          out.print(s2);
	      
	    } catch (SQLException e) {
	      throw new ServletException("SQL error", e);
	    }
	  }
}