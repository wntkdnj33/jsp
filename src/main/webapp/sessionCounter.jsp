<%--
  Created by IntelliJ IDEA.
  User: kimminseok
  Date: 2023/11/27
  Time: 1:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Objects" %>
<html>
<head>
    <title>sessionCounter</title>
</head>
<body>
<%
    Long counter = 0l;
    if (Objects.nonNull(session.getAttribute("counter"))) {
        counter = (Long) session.getAttribute("counter");
    }
    session.setAttribute("counter", ++counter);
%>
<h1>
    counter:<%=counter%>
</h1>

</body>
</html>
