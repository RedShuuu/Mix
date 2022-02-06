<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.util.*" %>

<html>
<head>
<meta charset="UTF-8">
<title>To-do List</title>
</head>
<body>

<!-- Step 1: Creat HTML From -->

<form action="todo-demo.jsp">

	Add new item: <input type="text"  name="theItem" />
	<input type="submit" value="submit">
	
</form>

<br/>
<!-- 
Item entered: <%= request.getParameter("theItem") %>
 -->
 
<!-- Step 2: Add new item to "To-do" list -->

<%
	// get the to-do items from the session
	
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	
	// if the to-do items doesn't exist, then create a new one
	
	if (items == null) {
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	
	// see if there is form data to add
	// update empty check & duplicate check  
		
	String theItem = request.getParameter("theItem");
	
	boolean isItemNotEmpty = (theItem != null) && (!theItem.trim().equals(""));
	boolean isItemNotDuplicate = (theItem != null) && (!items.contains(theItem.trim()));
	
	if (isItemNotEmpty&&isItemNotDuplicate) {
		items.add(theItem);
	}
	
%>

<!-- Step 3: Display all "To-do" item from session -->

<hr>
<b>To-do List:</b><br/>

<ol>
<%
	for (String temp : items) {
		out.println("<li>" + temp + "</li>");
	}
%>
</ol>

</body>
</html>