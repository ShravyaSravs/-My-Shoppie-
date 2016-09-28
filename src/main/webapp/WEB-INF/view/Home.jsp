<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home Page</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style type="text/css">
h1 {
	text-align: "center";
	font-style: "italic";
	font-size: "50px";
	text-decoration: "underline";
	colour: "blue";
	height: 100px;
	width: 100%;
	background-color: #c3c3c3;
	text-align: center;
	padding-top: 20px;
}
</style>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}
</style>
<style>
.dropdown-submenu {
	position: relative;
}

.dropdown-submenu .dropdown-menu {
	top: 0;
	left: 100%;
	margin-top: -1px;
}
</style>
<style>
body {
	font: 400 15px/1.8 Lato, sans-serif;
	color: #777;
}

h3, h4 {
	margin: 10px 0 30px 0;
	letter-spacing: 10px;
	font-size: 20px;
	color: #111;
}

.container {
	padding: 80px ;
}

.person {
	border: 10px solid transparent;
	margin-bottom: 25px;
	width: 80%;
	height: 80%;
	opacity: 0.7;
}

.person:hover {
	border-color: #f1f1f1;
}

.carousel-inner img {
	-webkit-filter: grayscale(90%);
	filter: grayscale(90%); /* make all photos black and white */
	width: 200%; /* Set width to 100% */
	margin: auto;
}
 
.carousel-caption h3 {
	color: #fff !important;
}

@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
		/* Hide the carousel text when the screen is less than 600 pixels wide */
	}
} */

.bg-1 {
	background: #2d2d30;
	color: #bdbdbd;
}

.bg-1 h3 {
	color: #fff;
}

.bg-1 p {
	font-style: italic;
}

.list-group-item:first-child {
	border-top-right-radius: 0;
	border-top-left-radius: 0;
}

.list-group-item:last-child {
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail p {
	margin-top: 15px;
	color: #555;
}

.btn {
	padding: 10px 20px;
	background-color: #333;
	color: #f1f1f1;
	border-radius: 0;
	transition: .2s;
}

.btn:hover, .btn:focus {
	border: 1px solid #333;
	background-color: #fff;
	color: #000;
}

.modal-header, h4, .close {
	background-color: #333;
	color: #fff !important;
	text-align: center;
	font-size: 30px;
}

.modal-header, .modal-body {
	padding: 40px 50px;
}

.nav-tabs li a {
	color: #777;
}

/* .navbar {
	font-family: Montserrat, sans-serif;
	margin-bottom: 0;
	background-color: #2d2d30;
	border: 0;
	font-size: 11px !important;
	letter-spacing: 4px;
	opacity: 0.9;
}

.navbar li a, .navbar .navbar-brand {
	color: #d5d5d5 !important;
}

.navbar-nav li a:hover {
	color: #fff !important;
}

.navbar-nav li.active a {
	color: #fff !important;
	background-color: #29292c !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
}
 */
.open .dropdown-toggle {
	color: #fff;
	background-color: #555 !important;
}

.dropdown-menu li a {
	color: #000 !important;
}

.dropdown-menu li a:hover {
	background-color: red !important;
}

</style>
</head>

<body background="http://cdn.wallpapersafari.com/45/96/BYyTUW.jpg">
<h1><b>@My Shoppie@<img alt="Logo" src="C:\Users\shravya\Desktop\mslogo.jpg" width="50" height="50"></b></h1>
  <%-- <nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header"></div>
		<ul class="nav navbar-nav">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="shop for"></a>
				 <span class="glyphicon glyphicon-home" align="right"></span>Category</a> 
				<ul class="dropdown-menu">
					<li><c:forEach items="${categoryList}" var="category">
							<a href="#"><c:out value="${category.name}" /><span
								class="glyphicon glyphicon-menu-right"></span></a>
							<br>
						</c:forEach></li>
				</ul></li>
		</ul> --%>
		
		<ul class="nav navbar-nav navbar-right"> 
		
	         <sec:authorize access="isAuthenticated()">

				<li><a href="<c:url value="/perform_logout" />">Logout</a></li>
					<li><a href="Cart"> <span
					class="glyphicon glyphicon-shopping-cart"></span>Cart
			</a></li> 
				<li><a href="">Welcome<sec:authentication
							property="principal.username" /></a></li>
							
			</sec:authorize>
		<%-- 	<c:choose>	
						<c:when test="${!Administrator}">	
						<li style="float: right"><a href="viewcart"
							class="w3-hover-none"><i class="glyphicon glyphicon-shopping-cart"></i>(${cartsize})</a></li>
						</c:when>
						</c:choose>
                      
						<li style="float: right"><a href="#" class="w3-hover-none"><i
								class="glyphicon glyphicon-user"></i> Hi, ${name}</a></li> 
					
 --%>			<sec:authorize access="!isAuthenticated()">
				<li><a href="Registration"><span
						class="glyphicon glyphicon-user"></span>Register</a></li>
				<li><a href="Login"><span
						class="glyphicon glyphicon-log-in"></span>Login</a></li>
               
			</sec:authorize>
		</ul>

		<div class="col-sm-4 col-sm-offset-0">
			<div id="imaginary_container">
				<div class="input-group stylish-input-group">
					<input type="text" class="form-control" placeholder="Search">
					<span class="input-group-addon">
						<button type="submit">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
			</div>
		</div>
	</div>
	</nav>
<<!-- div class="container">
  <div class="btn-group btn-group-justified">
    <button type="button" class="btn btn-primary">WOMEN</button>
    <ul class="dropdown-menu" role="menu">
        <li><a href="#">FROCKS</a></li>
        <li><a href="#">T_SHIRT</a></li>
      </ul>
    <button type="button" class="btn btn-primary">MEN</button>
    <ul class="dropdown-menu" role="menu">
        <li><a href="#">FROCKS</a></li>
        <li><a href="#">T_SHIRT</a></li>
      </ul>
    <div class="btn-group">
      <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                 KIDS<span class="caret"></span></button>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">FROCKS</a></li>
        <li><a href="#">T_SHIRT</a></li>
      </ul>
    </div>
  </div>
</div>    -->
<c:choose>

				<c:when test="${!Administrator}">
					<!-- Category List -->
					<c:if test="${!empty categoryList}">
						<div>
							<ul
								class="w3-navbar w3-light-grey w3-round w3-small menu w3-card-4 "
								Style="width: 70%; margin-left: 15%; margin-top: -2px;">
								<c:forEach items="${categoryList}" var="category">
									<li><a href="view/${category.id}" class="w3-hover-none"><i
											class="fa fa-list-alt" aria-hidden="true"></i>
											${category.name}</a></li>
								</c:forEach>

							</ul>
						</div>
					</c:if>
				</c:when>
				</c:choose>

<c:choose>
<c:when test="${!Administrator }">
<c:if test="${empty HideOthers}">

	<div class="container">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!--   Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="http://www.kenmma.com/skin/front/img/home-banner05.jpg" alt="SHOP HAPPY"
						width="460" height="345">
				</div>

				<div class="item">
					<img src="http://www.shopickr.com/wp-content/uploads/2015/09/montecarlo-fashion-clothing-eoss-sale-discount-9-15-2015-t-shirts-mens-banner.jpg"
						alt="FEEL THE LUXURY" width="460" height="345">
				</div>

				<div class="item">
					<img src="data:image/jpeg;base64,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"
						alt="BEAUTY" width="460" height="345">
				</div>

				<div class="item">
					<img
						src="F:\pics\prjcy\AgathaC-PC-GW._UX1500_SX1500_CB279498644_.jpg"
						alt="LOVE IT" width="460" height="345">
				</div>
			</div>

			<!-- Left and Right Controllers -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	</c:if>
	</c:when>
	</c:choose>

	<!-- <div class="row">
		<div class="col-sm-4">
			<p class="text-center">
				<strong>LONG_FROCKS</strong>
			</p>
			<br> <a href="#demo" data-toggle="collapse"> <img
				src="http://ep.yimg.com/ay/yhst-130634544928068/clarisse-prom-dress-2566-61.jpg" class="img-circle person" alt="Random Name"
				width="255" height="255">
			</a>
			<div id="demo" class="collapse">
				<p>Guitarist and Lead Vocalist</p>
				<p>Loves long walks on the beach</p>
				<p>Member since 1988</p>
			</div>
			<button type="button" class="btn btn-info">Buy now</button>
         <button type="button" class="btn btn-warning">Add to cart</button> 
			
		</div>
		
		<div class="col-sm-4">
			<p class="text-center">
				<strong>MENS TRADITONAL</strong>
			</p>
			<br> <a href="#demo2" data-toggle="collapse"> <img
				src="https://s-media-cache-ak0.pinimg.com/236x/a9/c4/fb/a9c4fb4a448eeff58cf62ef0c4db8e34.jpg" class="img-circle person" alt="Random Name"
				width="255" height="255">
			</a>
			<div id="demo2" class="collapse">
				<p>Drummer</p>
				<p>Loves drummin</p>
				<p>Member since 1988</p>
				 
			</div>
			<button type="button" class="btn btn-info">Buy now</button>
         <button type="button" class="btn btn-warning">Add to cart</button>
		</div>
		<div class="col-sm-4">
			<p class="text-center">
				<strong>PARTY WEAR</strong>
			</p>
			<br> <a href="#demo3" data-toggle="collapse"> <img
				src="http://image.dhgate.com/albu_343665710_00/1.0x0.jpg" class="img-circle person" alt="Random Name"
				width="255" height="255">
			</a>
			<div id="demo3" class="collapse">
				<p>Bass player</p>
				<p>Loves math</p>
				<p>Member since 2005</p>
				</div>
			<button type="button" class="btn btn-info">Buy now</button>
         <button type="button" class="btn btn-warning">Add to cart</button> 
			
		</div>
	</div> -->

	
<%-- 	<div style="width:100%; height:20;"></div>

		<c:choose>
			<c:when test="${!Administrator}">
				<c:if test="${!empty productList}">
					<div>
						<!-- <ul> -->
						<div class="row w3-card-8 w3-margin" style="margin-bottom: 0px">
							<br>
							<c:forEach items="${productList}" var="product">
								
									<div class="thumbnail">
									<div class="col-md-4">
							<a href="ShowProduct/${product.id}"></a> 
										<img height="200px" width="200px" alt="${product.id}"
											src="<c:url value="/resources/images/product/${product.id}.jpg"></c:url>">
										<div class="caption">
											<p>
												${product.name}
												<c:choose>
													<c:when test="${LoggedIn}">
														<form action="addtoCart/${userId}/${product.id}">
															<input type="number" value="1" name="quantity"
																class="btn btn-xs btn-primary   col-xs-6 ">
															<input type="submit" value="Add" class="btn btn-xs col-xs-6 btn-primary">
														</form>
														
													</c:when>
												</c:choose>
											</p>
										</div>
									</div>
								</div>
								</c:forEach>
						</div>
						
					</div>
				</c:if>
			</c:when>
		</c:choose>
	 --%>
	
	<c:if test="${empty HideOthers }">
	<c:forEach items="${productList}" var="product"><tr>
<td id="td1"><c:out value="${product.name}" />

							<td><!-- --<div class="thumbnail">-->
							  <div class="col-md-4">
							<a href="ShowProduct/${product.id}"> 
     					<img height="150px" width="150px" alt="${product.id }"
     					src="<c:url value="/resources/images/product/${product.id }.jpg"></c:url>"></a>
     					
     					<td>
			<td id="td1"><c:out value="${product.name}" />
			<sec:authorize access="isAuthenticated()">
			<c:url var="action" value="addtocart/${product.id}"></c:url>
			<form:form action="${action}" modelAttribute="cart">
			
			<input type="submit" class="btn btn-primary" value="Add To Cart" />
			</form:form>
			</sec:authorize>
			</td>
									
							</div>
	</td>						
		
</tr>						
</td></c:forEach>
</div>
	
</c:if>
	<%-- <table>
		<c:forEach items="${productList}" var="product">
			<tr>
				<td><c:out value="${product.name}" /></td>

				<td><!-- <div class="thumbnail"> -->
				
		<div class="col-sm-4">
						<a href="ShowProduct/${product.id}"> <img height="200px"
							width="200px" alt="${product.id }"
							src="<c:url value="/resources/images/${product.id }.jpg"></c:url>"></a>
					</div></td>

				<td><c:url var="action" value="addtocart/${product.id}"></c:url>
					<form:form action="${action}" modelAttribute="cart">
						<input type="submit" class="btn btn-primary" value="Add To Cart" />
					</form:form></td>
			</tr>
		
		</c:forEach>
	</table> --%>
	<div ng-view></div>


	<%-- <c:if test="${UserClickedLogin}">
<jsp:include page="login.jsp"></jsp:include>
</c:if> --%>
	<c:choose>
		<c:when test="${UserClickedadmin}">
			<c:import url="/WEB-INF/view/Admin.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${UserClickedlogin}">
			<c:import url="/WEB-INF/view/Login.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${UserClickeduser}">
			<c:import url="/WEB-INF/view/Registration.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${UserClickedCart}">
			<c:import url="/WEB-INF/view/Cart.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${UserClickedPayment}">
			<c:import url="/WEB-INF/view/Payment.jsp"></c:import>
		</c:when>
	</c:choose>
<%-- 	 <c:choose>
<c:when test="${UserClickedsupplier}">
<c:import url="/WEB-INF/view/Supplier.jsp"></c:import>
</c:when>
</c:choose>
<c:choose>
<c:when test="${UserClickedproduct}">
<c:import url="/WEB-INF/view/Product.jsp"></c:import>
</c:when>
</c:choose>
<c:choose>
<c:when test="${UserClickedcategory}">
<c:import url="/WEB-INF/view/Category.jsp"></c:import>
</c:when>
</c:choose>
	<c:choose>
	<c:when test="${Administrator}">
                 <div class="btn-group btn-group-justified">
				<div class="btn-group"><a href="product"class="btn btn-primary"> Products</a></div>
				<div class="btn-group"><a href="category" class="btn btn-primary">Category</a></div>
				<div class="btn-group"><a href="supplier" class="btn btn-primary"> Supplier</a></div>
					</div>
			
		</c:when>
	</c:choose><!-- category list -->
${msg}
${msg1}
 --%>

</body>
</html>