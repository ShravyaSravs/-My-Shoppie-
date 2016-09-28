<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="<c:url value="/resources/table1.css" />">
	<!-- <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script> -->
<title>Supplier</title>
<script>
	var app = angular.module('myApp', []);
	function MyController($scope, $http) {
		$scope.sortType = 'name'; // set the default sort type
		$scope.sortReverse = false; // set the default sort order
		$scope.search = '';
		$scope.getDataFromServer = function() {
			$http({
				method : 'GET',
				url : 'suppliergson'
			}).success(function(data, status, headers, config) {
				$scope.suppliers = data;// alert(data); 
			}).error(function(data, status, headers, config) {
			});
		};
	};
</script>
</head>
<body background="http://cdn.wallpapersafari.com/45/96/BYyTUW.jpg">
	<div class="text-center myForm">
		<c:url var="action" value="editsupplier"></c:url>
		<form:form action="${action}" modelAttribute="supplier">
			<table>
			<c:choose>
			<c:when test="${supplier.id gt 0}">
				 <tr>
					<td>ID:</td>
					<td><form:input class="input1" path="id" readonly="true"/></td>
				</tr> 
				</c:when></c:choose>
				<tr>
					<td>Name:</td>
					<td><form:input class="input1" path="name" /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><form:input class="input1" path="address" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" class="btn btn-primary" value="Save" /></td>
				</tr>			</table>
		</form:form>
	</div>
	
		${successmessage }
	
			<div class="container" ng-app="myApp"
				ng-controller="MyController" ng-init="getDataFromServer()">
				 <%-- <form>
					<input
						ng-model="search" type="text" placeholder=" Search Supplier"
						style="width: 20%">
				</form>  --%>
				<br>
			
				<div align="center">
		<table class="table1" style="width: 80%">
			<caption>Suppliers</caption>
			<thead>
				<tr id="tr1">
					<th>Supplier Id</th>
					<th>Supplier Name</th>
					<th>Supplier Address</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${supplierList}" var="supplier">
					<tr id="tr1" data-ng-repeat="supplier in suppliers | orderBy:sortType:sortReverse | filter:search">
						<td id="td1"><c:out value="${supplier.id}" />
						<td id="td1"><c:out value="${supplier.name}" />
						<td id="td1"><c:out value="${supplier.address}" />
						<td id="td1"><a href="addeditsupplier/${supplier.id }"><img
								alt="Edit" src="edits.jpg"></a>
						<td id="td1"><a href="adddeletesupplier/${supplier.id }"><img
								alt="Delete" src="D:\images\deletes.jpg"></a>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
			</div>
</body>
</html>


<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier</title>
<style>
table {
font-family: arial, sans-serif;
border-collapse: collapse;
width:100%;
}
td,tr,th {
border:2px solid #dddddd;
text-align: center;
padding: 8px;
}
</style>
</head>

<body background="C:\Users\shravya\Desktop\shravya.jpg">
	<c:url var="addAction" value="editsupplier"></c:url>
	<form:form action="${addAction}" commandName="supplier">
Id:<form:input path="id" /><br>
Name:<form:input path="name" /><br>
Address:<form:input path="address" /><br>
		<input type="submit" value="add/edit" />
	</form:form>
	
    
	<div align="center">
		<table style="width:88%">
		<caption><center><h3>Supplier</h3></center></caption>
		<thead>
		<tr>
		<th>Supplier Id</th>
		<th>Supplier Name</th>
		<th>Supplier Description</th>
		<th>Edit</th>
		<th>Delete</th>
		</tr>
		</thead>
		<tbody>	
<c:forEach items="${supplierList }" var="supplier">
<tr>
<td><c:out value="${supplier.id }"></c:out>
<td><c:out value="${supplier.name }"></c:out>
<td><c:out value="${supplier.description }"></c:out>
<td id="td1"><a href="addeditsupplier/${supplier.id }"><img
								alt="Edit" src="C:\Users\shravya\Desktop\edits.jpg"></a>
<td><a href="adddeletesupplier/${supplier.id}"><img alt="Delete" src="C:\Users\shravya\Desktop\deletes.jpg"></a>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html> --%>