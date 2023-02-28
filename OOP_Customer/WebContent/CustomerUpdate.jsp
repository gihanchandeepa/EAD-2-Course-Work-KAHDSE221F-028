<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String Cid = request.getParameter("Cid");
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from customer1 where Cid="+Cid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<html>
<head>
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 80%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=number], select, textarea {
  width: 80%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=date], select, textarea {
  width: 80%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}


h2 {
  text-align: center;
  padding: 12px;
  font-size: 44px;
  text-transform: uppercase;
  color: #8a2be2;
}

label {
  padding: 20px 20px 20px 0;
  font-size: 22px;
  display: inline-block;
}

input[type=submit] {
  background-color: #008b8b;
  color: white;
  padding: 20px 160px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: left;
}

input[type=submit]:hover {
  background-color: #800080;
}

.container {
  border-radius: 5px;
  background-color: #7fffd4;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>

<h2>Customer Register Form</h2>


<div class="container">
  <form action="UpdateProcess.jsp" method="post">
  <div class="row">
    <div class="col-25">
      <label for="fname">ID</label>
    </div>
    <div class="col-75">
      <input type="text" name="Cid" placeholder="Enter ID.." readonly id="Cid" value="<%=resultSet.getInt("Cid") %>">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="lname">Customer Name</label>
    </div>
    <div class="col-75">
      <input type="text" id="Cname" name="Cname" placeholder="Your Name.."  value="<%=resultSet.getString("Cname") %>">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="lname">Address</label>
    </div>
    <div class="col-75">
      <input type="text" id="Caddress" name="Caddress" placeholder="Your Address.."  value="<%=resultSet.getString("Caddress") %>">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="lname">Email</label>
    </div>
    <div class="col-75">
      <input type="text" id="cEmail" name="cEmail" placeholder="" value="<%=resultSet.getString("cEmail") %>">
    </div>
  </div>
<div class="row">
    <div class="col-25">
      <label for="lname">Phone Number</label>
    </div>
    <div class="col-75">
      <input type="number"  name="pNo" placeholder="Your Phone.." id="pNo" value="<%=resultSet.getString("pNo") %>">
    </div>
  </div>
  
<br>
<br>
<br>
  <div class="row">
    <input type="submit" value="Submit">
  </div>
  </form>
<% 
 }
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%> 
</div>

</body>
</html>
