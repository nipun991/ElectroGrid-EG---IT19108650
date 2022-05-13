<%@page import="com.PowerCutTimeManagement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PowerCut Time Management </title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/PowerCutTimeManagement.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>PowerCut Time Management</h1>

				<form id="formPowerCutTimeManagement" name="formPowerCutTimeManagement" method="post" action="PowerCutTimeManagement.jsp">


					City ID: <input id="City_ID" name="City_ID" type="text"
						class="form-control form-control-sm"> 
						
						<br>Province: <input id="Province" name="Province" type="text"
						class="form-control form-control-sm"> 
						
						<br> Town: <input id="Town" name="Town" type="text"
						class="form-control form-control-sm"> 
						
						<br> Time: <input id="Time" name="Time" type="text"
						class="form-control form-control-sm">
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
					PowerCutTimeManagement projectObj = new PowerCutTimeManagement();
						out.print(projectObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
