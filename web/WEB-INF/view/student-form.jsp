<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: EHSon
  Date: 2022-10-19
  Time: 오후 3:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>
<form:form action="processForm" modelAttribute="student">
    First name: <form:input path="firstName" />
    <br><br>
    Last name: <form:input path="lastName" />
    <br><br>
    Country:
    <form:select path="country">
        <form:options items="${student.countryOptions}" />
    </form:select>
    <br><br>
    Favorite Language:
     <form:radiobutton path="favoriteLanguage" value="Java"/>Java
     <form:radiobutton path="favoriteLanguage" value="C#"/>C#
     <form:radiobutton path="favoriteLanguage" value="PHP"/>PHP
     <form:radiobutton path="favoriteLanguage" value="Ruby"/>Ruby
    <br><br>
    <form:checkbox path="operatingSystems" value="Linux"/>Linux
    <form:checkbox path="operatingSystems" value="MS Window"/>MS Window
    <form:checkbox path="operatingSystems" value="Mac OS"/>Mac OS
    <br><br>
    <input type="submit" value="Submit" />
    
</form:form>
</body>
</html>
