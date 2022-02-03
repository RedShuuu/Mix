<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTML Form response</title>
</head>
<body>

The student name is confirmed: <%= request.getParameter("firstName") %> <%= request.getParameter("lastName") %>
<br/>
Alternate syntax param.formFieldName: ${param.firstName} ${param.lastName}
<br/>
Country: ${param.country}
<br/>
<% if(request.getParameter("country") != null) {
	out.println("CountryB: " + request.getParameter("country"));
	} else {
	out.println("null");
	}
%>
<br/>
Radio Language: ${param.language}
<br/>
CheckBox Language:
<% 
	String[] lang = request.getParameterValues("language");
	if(lang != null) {
		for(String s: lang) {
			out.println("<li>" + s + "</li>");
		}
	}
%>
</body>
</html>

