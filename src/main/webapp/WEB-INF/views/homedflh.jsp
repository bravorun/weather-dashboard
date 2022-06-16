<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <style><%@include file="/WEB-INF/views/style/homestyle.css"%></style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
  </head>
  <body>

    <input class="left_area" type="checkbox" id="check">
    <!--header area start-->
    <header>
      <label for="check" class ="left_area">
        <i class="fas fa-bars" id="sidebar_btn"></i>
      </label>
      <div class="h3">
       <div class="right_area">
        <a href="/logout" class="logout_btn">Logout</a>
      </div>
      <div class="left_area">
        <h3>Order <span>Processing</span></h3>
      </div>
      </div>
      <div class="h3">
      <div class="uname">
       <div class="right_area">
      <security:authorize access="isAuthenticated()">
   			welcome <security:authentication property="principal.username" /> 
   			
      </security:authorize>
      </div>
      </div>
      </div> 
    </header>
    <!--header area end-->
    <!--sidebar start-->
    <div class="sidebar">
      <a href="/home"><i class="fas fa-desktop"></i><span>Home</span></a>
      <a href="../order/${user.id}"><i class="fas fa-cogs"></i><span>Show Orders</span></a>
      <a href="../createorder/${user.id}"><i class="fas fa-cart-plus"></i><span>Create Orders</span></a>
    </div>
    <!--sidebar end-->

    <div class="content">
      <div class="card">
      <h1>welcome</h1>
      ${ user.id} 
      </div>
    </div>
  </body>
</html>