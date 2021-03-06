<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	width: 100%;
	background-color: #f2f2f2
}

.card:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

body {
	font-family: Arial;
	font-size: 17px;
	padding: 8px;
	background-image:
		url("https://www.jotform.com/uploads/ceren/form_files/deep_ocean.635.jpg");
}

* {
	box-sizing: border-box;
}

.row {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	-ms-flex-wrap: wrap; /* IE10 */
	flex-wrap: wrap;
	margin: 0 -16px;
}

.col-25 {
	-ms-flex: 25%; /* IE10 */
	flex: 25%;
}

.col-50 {
	-ms-flex: 50%; /* IE10 */
	flex: 50%;
}

.col-75 {
	-ms-flex: 75%; /* IE10 */
	flex: 75%;
}

.col-25, .col-50, .col-75 {
	padding: 0 16px;
}

.container {
	background-color: #f2f2f2;
	padding: 5px 20px 15px 20px;
	border: 1px solid lightgrey;
	border-radius: 3px;
}

input[type=text] {
	width: 100%;
	margin-bottom: 20px;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

label {
	margin-bottom: 10px;
	display: block;
}

.icon-container {
	margin-bottom: 20px;
	padding: 7px 0;
	font-size: 24px;
}

.btn {
	background-color: #04AA6D;
	color: white;
	padding: 12px;
	margin: 10px 0;
	border: none;
	width: 100%;
	border-radius: 3px;
	cursor: pointer;
	font-size: 17px;
}

.btn:hover {
	background-color: #45a049;
}

a {
	color: #2196F3;
}

hr {
	border: 1px solid lightgrey;
}

span.price {
	float: right;
	color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media ( max-width : 800px) {
	.row {
		flex-direction: column-reverse;
	}
	.col-25 {
		margin-bottom: 20px;
	}
}
</style>
</head>
<body>
	<div class="card">
		<h2 style="text-align: center">
			<br>The Laundry Mart Checkout Form
		</h2>
		<p style="text-align: center">Make your payment to finalize your
			booking</p>

		<div class="row">
			<div class="col-75">
				<div class="container">
					<form action="/action_page.php">

						<label> <input type="checkbox" checked="checked"
							name="sameadr"> Shipping address same as billing
						</label> <input type="submit" value="Continue to checkout" class="btn">
					</form>
				</div>
			</div>
			<div class="col-25">
				<div class="container">
					<h4>
						Cart <span class="price" style="color: black"><i
							class="fa fa-shopping-cart"></i> <b>1</b></span>
					</h4>
					<p>
						<a>Product 1</a> <span class="price">$15</span>
					</p>
					<hr>
					<p>
						Total <span class="price" style="color: black"><b>$30</b></span>
					</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
