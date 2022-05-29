<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   <link rel="stylesheet"href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <style>
	.form_bg{
    background:linear-gradient(to bottom,#c79625,#eae6e2);
    height:100vh;
    display:flex;
    align-items:center;
}
.form_horizontal{
    font-family:'lato',sans-serif;
    text-align:center;
    padding-left: 350px;
}
.form_horizontal .form_icon{
    color:rgb(58, 29, 28);
    font-size:100px;
    line-height:85px;
    margin:0 0 13px;
}
.form_horizontal .title{
    color:rgb(18, 15, 15);
    font-size:23px;
    font-weight:700;
    Letter-spacing:1px;
    text-transform:uppercase;
    margin: 0 0 35px 0;
}
.form_horizontal .input-icon{
    position:absolute;
    left:15px;
    top:50%;
    transform:translateY(-50%);
    font-size:13px;
    color:#777;
}
.form_horizontal .form-control{
    color:#555;
    background-color:#fff;
    font-size:13px;
    Letter-spacing:1px;
    height:37px;
    padding:2px 15px 2px 35px;
    border:none;
    border-radius:100px;
}
.form_horizontal .form-control::placeholder{
   color:rgba(0,0,0,0.7);
   font-size: 14px;
   text-transform:capitalize;
}
.form_horizontal .btn{
    color:#fff;
    background-color: #222;
    font-size:15px;
    font-weight:600;
    letter-spacing: 1px;
    width:100%;
    padding: 10px 20px;
    margin: 0 0 15px 0;
    border:none;
    border-radius:20px;
    text-transform: uppercase;
}
.form_horizontal .form-options{
    margin:0;
    padding:0;
    list-style: none;
    
}
.form_horizontal .from-options li a{
    color:#fff;
    letter-spacing:0.5px;
    margin:0 0 10px;
    display:block;
}
.form_horizontal .from-options li a i{
    font-size:12px;
}
.footer{
    background-color: rgb(240, 238, 231);
    
}
.footerlogo{
    margin-left: 650px;
}
.inner-footer{
    margin:0;
    padding:0;
    background-color: #272727;

}
.social-links{
    display:flex;
    padding-left: 550px;

}
.social-links ul{
    display:flex;
    

}
.social-items{
    list-style: none;
  
}
.social-items a{
    padding: 10px 20px;
    font-size: 30px;
}
.quick-links{
    display: flex;
    padding-left: 450px;
    text-align: center;
}
.quick-links ul{
    display:flex;
    text-align: center;
}
.quick-items{
    list-style: none;
    color:black
}
.quick-items a{
    text-decoration: none;
    padding:0px 15px;
    font-size: 18px;
}
.outer-footer{
    padding:10px;
    text-align: center;
    font-size: 18px;
    background-color: #3f3f3f;

}
   </style>
    <title>LENDING TREE</title>
  </head>
  <body>
    <p><font color="red"><c:if test="${not empty param.errMsg}">
			<c:out value="${param.errMsg}" />
        </c:if></font></p>
    <div class="form_bg">
        <div class="container">
            <div class="row">
                <div class="col-md-offset-8 col-md-8 col-sm-offset-8 col-sm-6">
                    <form action="LoginValidation" method="post" class="form_horizontal">
                        <div class="form_icon"><i class="fa fa-user-circle"></i></div>
                        <h3 class="title">User/Admin Login</h3>
                        <div class="form-group">
                            <span class="ïnput-icon"><i class="fa fa-user"></i></span>
                            <input class="form-control" type="text" name="uname" placeholder="ENTER USERNAME">
                        </div>
                        <div class="form-group">
                            <span class="ïnput-icon"><i class="fa fa-lock"></i></span>
                            <input class="form-control" type="password" name="pass" placeholder="ENTER PASSWORD">
                        </div>

                        <button class="btn signin">LOGIN</button>

                        <ul class="form-options">
                            <li><a href="forgetPass">Forgot Password</a></li>
				    <li><a href="forgetUID">Forgot UID</a></li>
                            <li><a href="RegForm">New User/Admin? Please Register<i class="fa fa-arrow-right"></i></a></li>
                        </ul>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer">
        <div class="footer-content">
           <img class="footerlogo" src="https://mywebappbucket072.s3.ap-south-1.amazonaws.com/LTLogo.png" height="200" width="200">
           <div class="social-links">
               <ul>
                   <li class="social-items"><a href="#"><img src="https://mywebappbucket072.s3.ap-south-1.amazonaws.com/facebook-brands.svg" height="30" width="30"></a></li>
                   <li class="social-items"><a href="#"><img src="https://mywebappbucket072.s3.ap-south-1.amazonaws.com/instagram-square-brands.svg" height="30" width="30"></a></li>
                   <li class="social-items"><a href="#"><img src="https://mywebappbucket072.s3.ap-south-1.amazonaws.com/twitter-square-brands.svg" height="30" width="30"></a></li>
                   <li class="social-items"><a href="#"><img src="https://mywebappbucket072.s3.ap-south-1.amazonaws.com/linkedin-brands.svg" height="30" width="30"></a></li>
               </ul>
           </div>
     
           <div class="quick-links">
               <ul>
                   <li class="quick-items"><a href="#">Personal loan</a></li>
                   <li class="quick-items"><a href="#">Home loan</a></li>
                   <li class="quick-items"><a href="#">Car loan</a></li>
                   <li class="quick-items"><a href="#">Bike loan</a></li>
                   <li class="quick-items"><a href="#">Educational loan..</a></li>
               </ul>
           </div>
        </div>
        <div class="outer-footer">
            Copyright &copy; Lending Tree Ltd. All Rights Reserved
        </div>
     </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>