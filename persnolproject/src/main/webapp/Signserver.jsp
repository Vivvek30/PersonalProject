<%@ page import = "java.sql.*"  %>
<%
String  fname = request.getParameter("name");
String  email = request.getParameter("email");
String  pass = request.getParameter("password");
String  gen = request.getParameter("radio");
String  phone = request.getParameter("phone");









try {
    
    Class.forName("com.mysql.jdbc.Driver");                //1st step load driver
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbb_test", "root", "");     //set Connnection
    String sql = "insert into reg_ser(name,email,password,gender,phone) values('"+fname+"','"+email+"','"+pass+"','"+gen+"','"+phone+"')";
    PreparedStatement pst = con.prepareStatement(sql);
   int i = pst.executeUpdate();
   if(i>0){
	   session.setAttribute("sesreg", "succesfully Registered");
	   response.sendRedirect("Homepage.jsp");
   }
   
} catch (Exception ex) {
       System.out.println(ex.getMessage());
}

%>