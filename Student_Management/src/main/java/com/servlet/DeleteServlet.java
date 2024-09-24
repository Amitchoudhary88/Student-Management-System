package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DBConnection;
import com.dao.StudentDao;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		StudentDao dao = new StudentDao(DBConnection.getConn());
		boolean f = dao.deleteStudent(id);
		

		HttpSession session = req.getSession();
	
		
		if(f) {
			
			session.setAttribute("succMsg","Student Details delete sucessfuly");
			resp.sendRedirect("index.jsp");	
		}
		else {
			
			session.setAttribute("errorMsg", "Something went worng");
			resp.sendRedirect("index.jsp");
		}
	}

		
	

}
