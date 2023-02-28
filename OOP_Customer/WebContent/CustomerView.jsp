<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "onlineevent";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <meta name="description" content="">
    <meta name="author" content="templatemo">

    <link href="css/viewtable.css" rel="stylesheet">
 <style>
h1 {
  text-align: center;
  padding: 12px;
  font-size: 44px;
  text-transform: uppercase;
  color: #8a2be2;
}
.button1 {
  background-color: #008b8b;
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 10px;
  margin: 4px 2px;
  cursor: pointer;
}
 </style>   
<title>Customer Details</title>
</head>
<body>

<h1>Customer Register Details</h1>


        
<div class="">
			  <center>
							
							<table id="mytable" class="content-table">
								 
								 <thead>
								 <th scope="col">Customer ID</th>
								 <th scope="col">Customer Name</th>
								 <th scope="col">Customer Address</th>
								  <th scope="col">Customer Email</th>
								   <th scope="col">Customer Phone Number</th>
								   
								  
									<th>Update</th>
									
									 <th>Delete</th>
								 </thead>
				  
				  
				 <%			  
				 try {
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from customer1";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
				  <tbody>
				  
				  <tr>
				  <td><%=resultSet.getInt("Cid") %></td>
				  <td><%=resultSet.getString("Cname") %></td>
				  <td><%=resultSet.getString("Caddress") %></td>
				  <td><%=resultSet.getString("cEmail") %></td>
				  <td><%=resultSet.getString("pNo") %></td>
				  
				  
				   <td><a href="CustomerUpdate.jsp?Cid=<%=resultSet.getInt("Cid") %>"><button class="button1" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="fas fa-trash-alt"></span></button></p></a></td>
				 
				  <td><a href="CustomerDelete.jsp?Cid=<%=resultSet.getInt("Cid") %>"><button class="button1" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="fas fa-trash-alt"></span></button></p></a></td>
				  
				  </tr>
				  
				  <%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
				  
				  </tbody>
					  
			  </table>
			</center>
			
		</div>





</div>
</div>
</div>
</div>
</body>
</html>