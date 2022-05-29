<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LENDING TREE</title>
<style>
html{
    font-family:"Lato","Helvetica Neue","Helvetica","Arial","sans-serif";
}
body{
    background-color:black;
    margin:0 ;
}
header{
    height:80px;
    background-color:#fff;
}
#top-section-content h1{
    font-size:4em;
    font-weight:300;
    color:#fff;
    text-align: center;
    margin-top: 0;
    padding-top: 10px;
    margin-bottom: 0px;
}
#header-container{
    width:80%;
    margin:auto;
}
.col-3{
    width:33%;
    Float:left;
}
.logo
.menu{
    margin-top: 40px;
    padding-top: 30px;
}
.menu li {
     list-style-type: none;
     display:inline;
     font-size: .90em;
     color:rgb(135, 93, 13);
     padding-right:40px;
}
.Home{
    text-decoration: none;
    color:rgb(135, 93, 13);
}
.Adminlogin{
    text-decoration: none;
    color:rgb(135, 93, 13);
}
.Userlogin{
    text-decoration: none;
    color:rgb(135, 93, 13);
}
#NewUserBtn{
    background-color: #6dc77a;
    border-radius: 28px;
    text-decoration: none;
    color:#fff;
    padding:10px 26px;
    margin-top: 20px;
    display:inline;
    font-size:17px;
    float: right;
}
#top-section-main{
    background-image: url("https://kretzerfirm.com/wp-content/uploads/2021/04/what-is-receivership-in-texas.jpg");
    background-repeat:no-repeat;
    background-size:2000px 740px;
    height: 666px;
    border:none;
}
#top-section-content{
    width:60%;
    margin-left: auto;
    margin-right: auto;
    margin-top:0 ;
}

#top-section-content p{
    font-size:1.3em;
    font-weight:400;
    color:#fff;
    text-align:center;
}
</style>
</head>
<body>
<header>
  <div id="header-container">
      <div class="col-3">
          <img class="logo" src="https://static.vecteezy.com/system/resources/previews/005/355/688/non_2x/financial-logo-accounting-logo-vector.jpg" height="80" width="90">
      </div>
      <div class="col-3">
          <nav>
              <ul class="menu">
                  <li><a href="login" class="Home">User/Admin Login</a></li>
                  <li><a href="AgentLogin" class="Adminlogin">Agent Login</a></li>
              </ul>
          </nav>
      </div>
  </div><!--Header Container Ends Here-->
</header>
<div class="main-container">
   <div id="top-section-main">
       <div id="top-section-content">
           <h1>LENDING TREE</h1>
           <p>A helping hand that you can count on...</p>
       </div>
   </div>
</div><!--Main-Container Ends Here-->
<footer></footer>
</body>
</html>