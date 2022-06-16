<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
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
   			Hi! <security:authentication property="principal.username" />
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
	<div class="content">
		<div class="card">
			<input type="text" id="myInput" onkeyup="myFunction()"
				placeholder="Search for Order ID" title="Type in a name"/>
				<table id="orderTable">
				<th>Order Id</th>
				<th>Products</th>
				<th>Created On</th>
				<th>Updated On</th>
				<th>Status</th>
				<th>Total</th>
				<th>Address</th>
				<th>Delete</th>
				<th>Update</th>
				<c:forEach var="order" items="${orders}" >
					<c:if test="${order.status != 'Delete'}">
						<tr>
							<td>${order.orderId}</td>
							<td><table>
							<c:forEach var="product" items="${order.products}" >
          						  <tr>
           								 <td>${product.name}</td>
            					  </tr>
            				</c:forEach>
							</table></td>
							<td>${order.createdOn}</td>
							<td>${order.updatedOn}</td>
							<td>${order.status}</td>
							<td>${order.orderTotal}</td>
							<td>${order.address}</td>
							<td><a href="/delete/${user.id}?id=<c:out value="${order.orderId}"/>"
								onclick="if (confirm('Delete selected item?')){return true;}else{event.stopPropagation(); event.preventDefault();};">delete</a></td>
							<td><a href="/update/${user.id}?id=<c:out value="${order.orderId}"/>"
								onclick="if (confirm('Delete selected item?')){return true;}else{event.stopPropagation(); event.preventDefault();};">Update</a>
								</td>
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</div>
	<script><%@include file ="/WEB-INF/views/script/search.js"%></script>

</body>
</html>