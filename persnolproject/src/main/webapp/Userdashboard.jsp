<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1> HELLO WELCOM TO YOUR DASHBOARD </h1>
<h2> under construction !! will update soon </h2>

   <%
                       String seslogss = (String)session.getAttribute("seslogss");
                    
                        if(seslogss==null){
                        	
                        }else{
                        %>
                        <script type="text/javascript">
                       
                        swal({
                        	  title: "login Successfull",
                        	  text: "<%= seslogss %>",
                        	  icon: "success",
                        	  button: "ok!",
                        	}); 
                        </script>
                        
                        <!-- <span style = "color : red"></span> -->
                        <%
                        session.setAttribute("seslogss", null);
                        	
                        	
                        }
                        
                        
                        %>
</body>
</html>