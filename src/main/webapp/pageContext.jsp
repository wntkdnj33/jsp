<%--
  Created by IntelliJ IDEA.
  User: kimminseok
  Date: 2023/11/27
  Time: 2:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forward vs include</title>
</head>
<body>
<h1> THIS IS pageContext.jsp</h1>

<%
    String type = request.getParameter("type");
    if ("include".equals(type)) {
        pageContext.include("sub.jsp");
    } else if ("forward".equals("type")) {
        pageContext.forward("sub.jsp");
    } else {
        out.println("type parameter is needed");
    }
%>

</body>
</html>
