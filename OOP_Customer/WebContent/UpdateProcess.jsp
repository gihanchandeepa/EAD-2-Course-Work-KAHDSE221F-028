<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/onlineevent";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String Cid = request.getParameter("Cid");
String Cname =request.getParameter("Cname");
String Caddress =request.getParameter("Caddress");
String cEmail=request.getParameter("cEmail");
String pNo=request.getParameter("pNo");





if(Cid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(Cid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update customer1 set Cid=?,Cname=?,Caddress=?,cEmail=?,pNo=? where Cid="+personID;
ps = con.prepareStatement(sql);
ps.setInt(1, personID);
ps.setString(2,Cname);
ps.setString(3,Caddress);
ps.setString(4,cEmail);
ps.setString(5,pNo);

int i = ps.executeUpdate();
if(i > 0)
{
	

RequestDispatcher rd = request.getRequestDispatcher("CustomerView.jsp");
rd.include(request, response);
}
else
{
out.print("There is a problem in updating Record.");

}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%> 