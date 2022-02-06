<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Response</title>
</head>

<!-- 2. Create JSP to read form data and set Cookies -->

<body>

<% 
	//read from data
	String favLang = request.getParameter("favLang");
	
	// create cookie
	Cookie theCookie = new Cookie("favoriteLanguage", favLang);
	
	//set life span, number of sec
	theCookie.setMaxAge(60*60*24);
	
	//send cookie to browser
	response.addCookie(theCookie); // add judge
	
%>

Thanks! We set your favorite language to: ${param.favLang}

<br/><br/>

<a href="cookies-homepage.jsp">Return to the homepage. </a>

</body>
</html>