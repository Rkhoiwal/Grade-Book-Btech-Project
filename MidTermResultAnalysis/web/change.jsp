<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String userid = request.getParameter("uname");
String pwd=request.getParameter("pass");
String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");
String connectionURL = "jdbc:mysql://localhost:3306/users";;;
Connection con=null;
String pass="";
int id=0;
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connectionURL, "root", "");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from members where pass='" + pwd + "'");
while(rs.next()){
id=rs.getInt(1);
pass=rs.getString(3);
}
out.println(userid+ " "+pass);
if(pwd.equals(conpass)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update members set pass='"+Newpass+"' where uname='"+userid+"'");
out.println("Password changed successfully");
st1.close();
con.close();
}
else{
out.println("Invalid Current Password");
}
}
catch(Exception e){
out.println(e);
}
%>