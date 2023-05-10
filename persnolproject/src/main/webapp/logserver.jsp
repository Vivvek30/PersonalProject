<%@ page import = "java.sql.*"  %>
<%
String username = request.getParameter("email");
String password = request.getParameter("password");

try {
    
    Class.forName("com.mysql.jdbc.Driver");                //1st step load driver
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbb_test", "root", "");     //set Connnection
    String sql = "select * from reg_ser where email= '"+username+"' and password = '"+password+"'" ;
    PreparedStatement pst = con.prepareStatement(sql);
    ResultSet rs = pst.executeQuery(sql);
   
   if(rs.next()){
	   session.setAttribute("seslogs", username);
	   session.setAttribute("seslogss", username);
	   response.sendRedirect("Userdashboard.jsp");
   }else{
	   session.setAttribute("seslogn", "Login Failed");
	   response.sendRedirect("login.jsp");
   }
   
} catch (Exception ex) {
       System.out.println(ex.getMessage());
}

%>