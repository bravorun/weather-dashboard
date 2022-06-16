<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
 <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<style><%@include file ="/WEB-INF/views/style/homestyle.css"%></style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"charset="utf-8"></script>
</head>
<body>

	<input class="left_area" type="checkbox" id="check">
	<!--header area start-->
	<header>
		<label for="check" class="left_area"> <i class="fas fa-bars"
			id="sidebar_btn"></i>
		</label>
		<div class="h3">
			<div class="right_area">
				<a href="/logout" class="logout_btn">Logout</a>
			</div>
			<div class="left_area">
				<h3>
					Order <span>Processing</span>
				</h3>
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
		<a href="../createorder/${user.id}"><i class="fas fa-cart-plus"></i><span>CreateOrders</span></a>
	</div>
	<!--sidebar end-->
	<div class="content">
		<div class="card">
		<form:form method="post" modelAttribute="updateDto" action="../update/${user.id}/${updateOrder.orderId}"> 		
		<div class="testbox">
        <div class="banner">
          <h1>Update Order</h1>
        </div>
        <div class="item">
          <h4>Order Id&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspOrdered On</h4>
          <div class="name-item">
           <input type="text" name="OrderId" style="width:150px;" value="${updateOrder.orderId}" disabled />
           <input type="text" name="Ordered On" style="width:150px;" label="Ordered On" value="${updateOrder.createdOn}" disabled/>
          </div>
        </div>
        <div class="contact-item">
          <div class="item">
            <table style="width:15%">
            <th>Products</th>
            <c:forEach var="product" items="${updateOrder.products}" >
            <tr>
            <td>${product.name}</td>
            </tr>
            </c:forEach>
            </table>
            </div>
            <h4>Contact no.</h4>
            <div class="name-item">
             <input type="text" name="contactno" value="${updateOrder.contact}">
            <form:input type="text" name="contactno" path="contact"/>
            </div>
        </div>
        <h4>Shipping Address</h4>
        <div class="name-item">
          <input type="text" name="contactno" value="${updateOrder.address}"/>
          <form:input   path="address"/>
        </div>
        <div class="btn-block">
          <button type="submit">Update</button>
        </div>
        <div class="btn-block">
        <button type="reset" >Reset</button>
        </div>
    </div>
	</form:form>
		</div>
	</div>
</body>
</html>