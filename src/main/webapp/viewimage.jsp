<%@ page trimDirectiveWhitespaces="true" %>
<html>
    <head>
        <title>View Image</title>
    </head>
    
    <body>
        
<%
String id = request.getParameter("id");
%>
<img src="getimage.jsp?id=<%=id%>" width="800"/>
 
    </body>
</html>