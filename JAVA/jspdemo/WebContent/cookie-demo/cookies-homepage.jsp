<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookies Demo</title>
</head>

<!-- 3. Create homepage to read cookies and display personalized content -->

<body>


<%
	String favLang = "Java";

	Cookie[] allCookies = request.getCookies();
	
	if (allCookies != null) {
		for (Cookie tempCookie : allCookies) {
			if (tempCookie.getName().equals("favoriteLanguage")) {
				favLang = tempCookie.getValue();
			}
		}
	}
	
	System.out.println(favLang);
%>

<h1>Training Portal</h1>

<h2>New Books for <%= favLang %></h2>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h2>Latest News for <%= favLang %></h2>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<hr>
<a href="cookies-personalize-form.html">Personalize this page.</a>
</body>
</html>