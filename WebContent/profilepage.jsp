<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> 

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 500px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}


.h12 {
  color: grey;
  text-align: center;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}

header{
	width:100%;
	height:70px;
	background-color: black;
}

h1{
	position:absolute;
	padding:3px;
	float:left;
	margin-left: 2%;
	margin-top: 10px;
	color: white;
}


ul{
	width: auto;
	float: right;
	margin-top: 8px;
}

li{
	display: inline-block;
	padding: 15px 30px;
}

a{
	text-align: center;
	text-decoration: none;
	color:white;
	font-size: 1.2vw;
}

a:hover {
	color: #F0c330;
	transition: 0.5s;
}

/* Content */
.tiazon-content{
	padding-bottom: 50px;
	padding-top: 50px;	
}

/* Footer */
.footer{
	background: black;
	color: white;
	padding-top: 20px;
	padding-bottom: 20px;
	text-align: center;
}

</style>
</head>
<body>


<c:set var="x" value="0"></c:set>
	<c:forEach items="${cartlist }" var="i">
		<c:set var="x" value="${x+1 }"></c:set>
	</c:forEach>

	<header>
		<h1>
			XFactor Store
		</h1>
		<nav>
			<ul>
				<li><a href="Controller?page=index">Home</a></li>
				<c:choose>
					<c:when test="${session == null}">
						<li><a href="Controller?page=login">Login</a></li>
						<li><a href="Controller?page=sign-up">Sign-up</a></li>
					</c:when>
					<c:when test="${session != null}">
						<li><a href="Controller?page=logout" style="color: #F24638;">Logout</a></li>
						<li><a href="Controller?page=myacc&username=${username }">My Account(<c:out value="${username }"></c:out>)</a></li>
					</c:when>
				</c:choose>
				<li><a href="Controller?page=showcart">cart(<c:out value="${x}"/>)</a></li>
			</ul>
		</nav>
	</header>


<h2 style="text-align:center">User Profile Card</h2>

<div class="card">
  <img src="img/avatars.png" alt="user" style="width:40%"><br>
  <center>
  <h1 class="h12">${name }</h1><br><br><br>
    </center>
  
  <p class="title" >Username : ${username }</p>
  <p>Email : ${email}</p><br>
  <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div>
  <p><button>Contact</button></p>
</div>

<footer>
		<div class="footer"> &copy; 2021 Copyright:
	      <a href="Controller?page=index">XFactor Store</a>
	    </div>
	</footer>
	


</body>
</html>
