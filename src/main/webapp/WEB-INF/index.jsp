<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>
<body>

<nav class="navbar navbar-light bg-info">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Drivers License</a>
  </div>
</nav>


<div class="container mt-5">
  <div class="row">
    <div class="col-sm">
    
    <form:form action="/create" method="post" modelAttribute="person">
    <div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">First Name</span>
  <input name="firstName" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Last Name</span>
  <input name="lastName" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
</div>
    <button type="submit" class="btn btn-danger">Submit</button>
    </form:form>
    
    </div>
  </div>
</div>










<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
</body>
</html>