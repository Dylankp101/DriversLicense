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



<div class="container">
  <div class="row">
    <div class="col-sm">
<%--         <form:form action="/create/license" method="post" modelAttribute="license">
    
    
    <select path="person" class="form-select" aria-label="Default select example">
  <option selected>Open this select menu</option>
  <c:forEach items="${persons}" var="person">
  <option value="${person}"><c:out value="${person.firstName} ${person.lastName}"/> </option>
	</c:forEach>
</select>

<div class="input-group mb-3 mt-3">
  <span class="input-group-text" id="basic-addon1">State</span>
  <input path="state" type="text" class="form-control" placeholder="Username" aria-label="" aria-describedby="basic-addon1">
</div>

<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Expiration Date</span>
  <input path="expirationDate" type="date" class="form-control" placeholder="Username" aria-label="" aria-describedby="basic-addon1">
</div>
    
    <button type="submit" class="btn btn-danger">Danger</button>
    </form:form> --%>
    	<form:form method = "post" action = "/create/license" modelAttribute = "license">
		
		<p>
			<form:label path = "person">Person:</form:label>
			<form:select path = "person">
				<c:forEach items = "${persons}" var = "person">
					<c:if test = "${person.getLicense() == null}">
						<form:option value = "${person}" label = "${person.getFirstName()} ${person.getLastName()}"/>					
					</c:if>
				</c:forEach>
			</form:select>
		</p>
		<p>
			<form:label path = "state">State:</form:label>
			<form:input path = "state"/>
		</p>
		<p>
			<form:label path = "expirationDate">Expiration Date:</form:label>
			<form:input type = "date" path = "expirationDate"/>
		</p>
		<button>Create License</button>
	</form:form>
    
    
    
    
    
    </div>
  </div>
</div>




<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
</body>
</html>