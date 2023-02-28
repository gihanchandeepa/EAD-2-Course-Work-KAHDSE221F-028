package custom;


import java.io.IOException; 
import java.io.PrintWriter; 
import java.sql.Connection; 
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 


//Import Database Connection Class file 
import custom.DatabaseConnecter; 

//Servlet Name 
@WebServlet("/CustomerServlet") 
public class CustomerServlet extends HttpServlet { 
	private static final long serialVersionUID = 1L; 

	protected void doPost(HttpServletRequest request, 
HttpServletResponse response) 

		throws ServletException, IOException 
	{ 
		try { 

			
			Connection con = DatabaseConnecter.initializeDatabase(); 

			
			PreparedStatement st = con 
				.prepareStatement("insert into customer1 values(?,?,?,?,?)"); 

			st.setInt(1, Integer.valueOf(request.getParameter("Cid"))); 
			st.setString(2, String.valueOf(request.getParameter("Cname")));
			st.setString(3, String.valueOf(request.getParameter("Caddress")));
			st.setString(4, String.valueOf(request.getParameter("cEmail"))); 
			st.setString(5, String.valueOf(request.getParameter("pNo"))); 
			
			
			st.executeUpdate(); 

			
			st.close(); 
			con.close(); 

			 
			PrintWriter out = response.getWriter(); 

			
			RequestDispatcher rd = request.getRequestDispatcher("/CustomerView.jsp");
			rd.include(request, response);
		
		} 
		catch (Exception e) { 
			e.printStackTrace(); 
		} 
	} 

}



