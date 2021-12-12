<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<script>	function myFunction() {
  alert("Your Details Are Saved Successfully!!! Please Login Again!!!");
}
</script>
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
<div class="container emp-profile">
		<form method="post" action ="UpdateUserProfileServlet" onsubmit="myFunction()">
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
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="home-tab" data-toggle="tab" href="#home" role="tab"
								aria-controls="home" aria-selected="true">About</a></li>
							<li class="nav-item"><a class="nav-link" id="profile-tab"
								data-toggle="tab" href="home.jsp" role="tab"
								aria-controls="profile" aria-selected="false">Log Out</a></li>
						</ul>
					</div>
				</div>.<% String v1 = (String)request.getAttribute("value1");  
				String v2 = (String)request.getAttribute("value2");
				String v3 = (String)request.getAttribute("value3");
				String v4 = (String)request.getAttribute("value4");
				String v5 = (String)request.getAttribute("value5");
				String v6 = (String)request.getAttribute("value6");%>
				<div class="col-md-8">
					<div class="tab-content profile-tab" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<div class="row">
								<div class="col-md-6">
									<label>User NIC</label>
								</div>
								<div class="col-md-6">
									<input type="text" name="id" placeholder="NIC" value = "<%=v1 %>"required>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Name</label>
								</div>
								<div class="col-md-6">
									<input type="text" name="name" placeholder="Name" value = "<%=v2 %>" required>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Email (Cannot be Changed)</label>
								</div>
								<div class="col-md-6">
									<input style = "color : red ;"  readonly   type="email" name="email" value = "<%=v3 %>" required>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Address</label>
								</div>
								<div class="col-md-6">
									<input  type="address" name="address" value = "<%=v4 %>" required>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Phone</label>
								</div>
								<div class="col-md-6">
									<input type="number" name="phone" placeholder= "phonenumber" value = "<%=v5 %>" required />
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>DOB</label>
								</div>
								<div class="col-md-6">
									<input type="date" name="bdate" placeholder= "DOB" value = "<%=v6 %>"required />
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Gender</label>
								</div>
								<div class="col-md-6">
									<div>
										<input type="radio" value="male" id="radio_1" name="gender"  required />
										<label for="radio_1" class="radio"><span>Male</span></label>
									</div>
									<div>
										<input type="radio" value="female" id="radio_2" name="gender"  required/>
										<label for="radio_2" class="radio"><span>Female</span></label>
									</div>

								</div>
								<div class="col-md-2">
									<input type="submit" class="profile-edit-btn" name="btnAddMore"
									value="save"  />
								</div>

							</div>
						</div>
					</div>
				</div>
		</form>
		
		</body>
</html>