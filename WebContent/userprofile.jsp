<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<% if(session.getAttribute("user")!= "user"){
	response.sendRedirect("CustomerAccLogin.jsp");	
}%>
<!DOCTYPE html>
<html>
<head>
<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
body {
	background: -webkit-linear-gradient(left, #3931af, #00c6ff);
}

.emp-profile {
	padding: 3%;
	margin-top: 3%;
	margin-bottom: 3%;
	border-radius: 0.5rem;
	background: #fff;
}

.profile-img {
	text-align: center;
}

.profile-img img {
	width: 70%;
	height: 100%;
}

.profile-img .file {
	position: relative;
	overflow: hidden;
	margin-top: -20%;
	width: 70%;
	border: none;
	border-radius: 0;
	font-size: 15px;
	background: #212529b8;
}

.profile-img .file input {
	position: absolute;
	opacity: 0;
	right: 0;
	top: 0;
}

.profile-head h5 {
	color: #333;
}

.profile-head h6 {
	color: #0062cc;
}

.profile-edit-btn {
	border: none;
	border-radius: 1.5rem;
	width: 70%;
	padding: 2%;
	font-weight: 600;
	color: #6c757d;
	cursor: pointer;
}

.proile-rating {
	font-size: 12px;
	color: #818182;
	margin-top: 5%;
}

.proile-rating span {
	color: #495057;
	font-size: 15px;
	font-weight: 600;
}

.profile-head .nav-tabs {
	margin-bottom: 5%;
}

.profile-head .nav-tabs .nav-link {
	font-weight: 600;
	border: none;
}

.profile-head .nav-tabs .nav-link.active {
	border: none;
	border-bottom: 2px solid #0062cc;
}

.profile-work {
	padding: 14%;
	margin-top: -15%;
}

.profile-work p {
	font-size: 12px;
	color: #818182;
	font-weight: 600;
	margin-top: 10%;
}

.profile-work a {
	text-decoration: none;
	color: #495057;
	font-weight: 600;
	font-size: 14px;
}

.profile-work ul {
	list-style: none;
}

.profile-tab label {
	font-weight: 600;
}

.profile-tab p {
	font-weight: 600;
	color: #0062cc;
}
table {
  background: #012B39;
  border-radius: 0.25em;
  border-collapse: collapse;
  margin: 1em;
}
th {
  border-bottom: 1px solid #364043;
  color: #E2B842;
  font-size: 0.85em;
  font-weight: 600;
  padding: 0.5em 1em;
  text-align: left;
}
td {
  color: #fff;
  font-weight: 400;
  padding: 0.65em 1em;
}
.disabled td {
  color: #4F5F64;
}
tbody tr {
  transition: background 0.25s ease;
}
tbody tr:hover {
  background: #014055;
}
</style>
<!------ Include the above in your HEAD tag ---------->
<meta charset="ISO-8859-1">
<title>Customer Profile</title>
</head>
<body>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@page import="dao.RegisterDao,model.*,java.util.*"%>
	<%
	// Call the get all records from the dao
	List<RegisteredCustomers> list1 = RegisterDao.searchRecords();
	request.setAttribute("list1", list1);
	%>
    <c:forEach items="${list1}" var="n">
	<div class="container emp-profile">
		<form method="post"  action="ProfileServlet">
			<div class="row">
				<div class="col-md-4">
					<div class="profile-img">
						<img
							src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog"
							alt="" />
						<div class="file btn btn-lg btn-primary">
							Change Photo <input type="file" name="file" />
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="profile-head">
						<h5>Hello! <br><br>${n.getName()}</h5>
						<h6>${n.getAddress()}</h6>
						<p class="proile-rating">
							LOYALTY RANKINGS : <br><span>Bronze - 0 - 1000 pts</span><br>
											   <span>Gold - 1000 - 10000 pts</span><br>
											   <span>Platinum - 10000 above pts</span><br>
						</p>
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="home-tab" data-toggle="tab" href="#home" role="tab"
								aria-controls="home" aria-selected="true">About</a></li>
							<li class="nav-item"><a class="nav-link" id="profile-tab"
								data-toggle="tab" href="home.jsp" role="tab"
								aria-controls="profile" aria-selected="false">Log Out</a></li>
						</ul>
						<input type ="hidden" name ="nic" value="${n.getNIC()}">
						<input type ="hidden" name ="name" value="${n.getName()}">
						<input type ="hidden" name ="email" value="${n.getEmail()}">
						<input type ="hidden" name ="address" value="${n.getAddress()}">
						<input type ="hidden" name ="telno" value="${n.getTelno()}">
						<input type ="hidden" name ="dob" value="${n.getDOB()}">
					</div>
				</div>
				<div class="col-md-2">
					<input type="submit" class="profile-edit-btn" name="btnAddMore"
						value="Edit Profile"/>
				</div>
			</div>
		</form>	
			<div class="row">
				<div class="col-md-4">
					<div class="profile-work">
						<p>LINKS</p>
						<a href="home.jsp#packages" >Packages</a><br/>
						<a href="home.jsp#schedule">Bookings</a><br/> 
						<a href="home.jsp#rates">Ratings</a><br/> 
						<a href="home.jsp#loyalty">Loyalty</a>
					</div>
				</div>
				<div class="col-md-8">
					<div class="tab-content profile-tab" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<div class="row">
								<div class="col-md-6">
									<label>User NIC</label>
								</div>
								<div class="col-md-6">
									<p>${n.getNIC()}</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Name</label>
								</div>
								<div class="col-md-6">
									<p>${n.getName()}</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Email</label>
								</div>
								<div class="col-md-6" >
									<p>${n.getEmail()}</p>

								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Address</label>
								</div>
								<div class="col-md-6">
									<p>${n.getAddress()}</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Phone</label>
								</div>
								<div class="col-md-6">
									<p>0${n.getTelno()}</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>DOB</label>
								</div>
								<div class="col-md-6">
									<p>${n.getDOB()}</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Gender</label>
								</div>
								<div class="col-md-6">
									<p>${n.getGender()}</p>
								</div>
							</div>
						</div>
						</c:forEach>
							<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
							<%@page import="dao.CustomerAccLoginDao,model.*,java.util.*"%>
	<%
	// Call the get all records from the dao
	List<CustomerAccLogin> list2 = CustomerAccLoginDao.TotalPts();
	request.setAttribute("list2", list2);
	%>
	<fieldset>
  	<legend>Loyalty:</legend>
						
						
		<c:forEach items="${list2}" var="u">
						<div class="tab-content profile-tab" id="profile" role="tabpanel"
							aria-labelledby="profile-tab">
							<div class="row">
								<div class="col-md-6">
									<label>Your Category</label>
								</div>
								<div class="col-md-6">
									<p>${u.getTotalpoints()}</p>
								</div>
							</div>
						</div>
		</c:forEach>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@page import="dao.PaymentDao,model.*,java.util.*"%>
	<%
	// Call the get all records from the dao
	List<Payment> list = PaymentDao.searchRecords();
	request.setAttribute("list", list);
	%>


	<table>
				<thead>
					<tr>
						<th>ID</th>
						<th>Total Payment</th>
						<th>Points</th>
					</tr>
				</thead>
				<tbody>
				 <c:forEach items="${list}" var="u">
						<tr>
							<td>${u.getId()}</td>
							<td>${u.getTotprice()}</td>
							<td>${u.getPts()}</td>

						</tr>
		           </c:forEach>
				</tbody>
			</table>
			</fieldset>
			</body>
</html>