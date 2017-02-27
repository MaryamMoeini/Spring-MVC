<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page session="true"%>
<html>
<head>
  <title>Item Repository System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- link type="text/css" href="<%=request.getContextPath() %>/css/bootstrap.css" rel="stylesheet"/ -->
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>



<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Item Repository System</a>
    </div>
    <div>
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="index">Home</a></li>
        <li><a href="#">About Us</a></li>
        <li><a href="#">Help Topics</a></li>
        <li><a href="#">Contact</a></li>
        <li>
        	<button class="btn btn btn-info navbar-btn" type="button">Login</button>
        </li>
      </ul>
    </div>
  </div>
</nav>
