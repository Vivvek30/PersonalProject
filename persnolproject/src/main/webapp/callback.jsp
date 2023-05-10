<%@ page import = "java.sql.*"  %>
<%
String  fname = request.getParameter("name");
String  email = request.getParameter("email");
String  phone = request.getParameter("phone");

try {
    
    Class.forName("com.mysql.jdbc.Driver");                //1st step load driver
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbb_test", "root", "");     //set Connnection
    String sql = "insert into cal_bck (name,email,phone) values('"+fname+"','"+email+"','"+phone+"')";
    PreparedStatement pst = con.prepareStatement(sql);
   int i = pst.executeUpdate();
   if(i>0){
	   session.setAttribute("seslog", "W'll reach you soon ");
	   response.sendRedirect("Homepage.jsp");
   }
   
} catch (Exception ex) {
       System.out.println(ex.getMessage());
}

%>