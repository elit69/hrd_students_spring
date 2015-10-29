<%@page import="java.util.ArrayList"%>
<%@page import="com.lit.hw1.dto.Student" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="author" content="Chhorn Elit">
  <meta lang="en">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- CSS Library -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lib/bootstrap.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lib/font-awesome-4.3.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lib/bootstrap-select.min.css">
  <!-- End CSS Library -->

  <!-- Custom StyleSheet --> 
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css">
  <!-- End Custom StyleSheet --> 

  <!-- Javascript Library -->
  <script src="${pageContext.request.contextPath}/resources/js/lib/jquery-2.1.4.min.js"></script>    
  <script src="${pageContext.request.contextPath}/resources/js/lib/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/lib/bootstrap-select.min.js"></script>  
  <!-- End Javascript Library -->
  
  <!-- Custom Javascript --> 
  <script src="${pageContext.request.contextPath}/resources/js/index.js"></script>
  <!-- End Custom Javascript -->
</head>
<body>
  <div id="main" class="container-fluid">
    <div class="row col-sm-11 center-block">
      <div class="col-sm-12 card"> 
        <div class="col-sm-12">
          <h1>All Student</h1>
          <hr>          
            <!-- Table User List -->
            <div class="table-responsive">       
              <table class="table table-striped table-hover">
                <thead>
                  <tr class="info">
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Classroom</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>               
               <c:forEach var="stu" items="${listStudent}">
				<tr>
					<td><c:out value="${stu.id}"/></td>
					<td><c:out value="${stu.firstname}"/></td>
					<td><c:out value="${stu.lastname}"/></td>
					<td><c:out value="${stu.classroom}"/></td>
					<td>
                    <mvc:form id="delete" action="delete" method="POST">
                    	<input type="hidden" name="id" value="${stu.id}">
                    	<input type="submit" value="Delete">
					</mvc:form>
                   <a href="${pageContext.request.contextPath}/update">update</a>
                   <a href="${pageContext.request.contextPath}/show">show</a>
                 </td>
				</tr>
				</c:forEach>	
             </tbody>   
           </table> 
           <a href="${pageContext.request.contextPath}/">home</a>
           <a href="${pageContext.request.contextPath}/add">add</a>
         </div>
         <!-- End Table User List -->    
       </div> 
     </div>
   </div>
 </div>
</body>
</html>