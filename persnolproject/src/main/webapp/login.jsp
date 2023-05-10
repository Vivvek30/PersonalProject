<!doctype html>
<html lang="en">
  <head>
   <style> 
   
   #hed{
   font-weight: bold;
   font-size : 20px;
   font-family : Lucida Handwriting;
   }
   
   #he{
   
  width: 400px;
  padding: 40px;
  border: 1px solid green;
 align : center;
 transform: translate(135%, 5%);
  border-radius: 8px;
}
   </style>
   
   
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>login</title>
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script>
  </head>
  <body>
  <br> <br> <br> <br> 
  
  <div id="he">
<div class="container">

<!-- Pills navs -->

<!-- Pills content -->
<div class="tab-content">
  <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="tab-login">
    <form action="logserver.jsp" method="post">
      <div class="text-center mb-3">
        <p id ="hed">Hs Groups</p>
        <button type="button" class="btn btn-link btn-floating mx-1">
          <i class="fa fa-google"></i>
        </button>

        <button type="button" class="btn btn-link btn-floating mx-1">
          <i class="fa fa-instagram"></i>
        </button>

        <button type="button" class="btn btn-link btn-floating mx-1">
          <i class="fa fa-twitter"></i>
        </button>
      </div>

      <p class="text-center">sign in</p>

      <!-- Email input -->
      <div class="form-outline mb-4">
        <input type="email" id="loginName" class="form-control" name ="email">
        <label class="form-label" for="loginName" > &nbsp; Email</label>
      </div>

      <!-- Password input -->
      <div class="form-outline mb-4">
        <input type="password" id="loginPassword" class="form-control"  name="password">
        <label class="form-label" for="loginPassword" > &nbsp; Password</label>
      </div>

      <!-- 2 column grid layout -->
      <div class="row mb-4">
        <div class="col-md-6 d-flex justify-content-center">
          <!-- Checkbox -->
          <div class="foarm-check mb-3 mb-md-0">
            <input class="form-check-input" type="checkbox" value="" id="loginCheck" checked />
            <label class="form-check-label" for="loginCheck"> Remember me </label>
          </div>
        </div>

        <div class="col-md-6 d-flex justify-content-center">
          <!-- Simple link -->
          <a href="#!">Forgot password?</a>
        </div>
      </div>

      <!-- Submit button -->
      <button type="submit" class="btn btn-success btn-block mb-4">Sign in</button>

      <!-- Register buttons -->
      <div class="text-center">
        <p>Not a member? <a href="index.jsp">Sign up</a></p>
        
            <%
                       String seslogn = (String)session.getAttribute("seslogn");
                    
                        if(seslogn==null){
                        	
                        }else{
                        %>
                        <script type="text/javascript">
                      
                        swal({
                        	  title: "login failed",
                        	  text: "<%= seslogn%>",
                        	  icon: "error",
                        	  button: "try again!",
                        	}); 
                        </script>
                        
                        <!-- <span style = "color : red"></span> -->
                        <%
                        session.setAttribute("seslogn", null);
                        	
                        	
                        }
                        
                        
                        %>
      </div>
    </form>
 
  </div>
</div>
</div>
</div>



    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>