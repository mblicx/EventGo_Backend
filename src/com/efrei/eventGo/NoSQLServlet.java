package com.efrei.eventGo;

import java.io.IOException;
import javax.servlet.http.*;

import com.google.appengine.api.datastore.*;


@SuppressWarnings("serial")
public class NoSQLServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/plain");
		resp.getWriter().println("NoSQL first test");
//		Datastore datastore = DatastoreOptions.getDefaultInstance().getService();
//
//	    // The kind for the new entity
//	    String kind = "Task";
//	    // The name/ID for the new entity
//	    String name = "sampletask1";
//	    // The Cloud Datastore key for the new entity
//	    Key taskKey = datastore.newKeyFactory().setKind(kind).newKey(name);
//
//	    // Prepares the new entity
//	    Entity task = Entity.newBuilder(taskKey)
//	        .set("description", "Buy milk")
//	        .build();
//
//	    // Saves the entity
//	    datastore.put(task);
//
//	    System.out.printf("Saved %s: %s%n", task.getKey().getName(), task.getString("description"));
	}
}
