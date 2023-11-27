<%--
  Created by IntelliJ IDEA.
  User: kimminseok
  Date: 2023/11/27
  Time: 2:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.util.Objects" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%!
    private List<String> getClasses(Class<?> clazz) {
        if (Objects.isNull(clazz)) {
            return Collections.emptyList();
        }

        List<String> classes = new ArrayList<>();
        while (clazz != null) {
            classes.add(clazz.getName());
            clazz = clazz.getSuperclass();
        }

        return classes;
    }
%>
<%
    response.setContentType("text/plain");                                  // response

    System.out.println("Hello, " + request.getParameter("name"));                  // request
    System.out.println("servlet name = " + config.getServletName());               // config
    System.out.println("context path = " + application.getContextPath());          // application

    System.out.println("this == page? " + (this == page));

    List<String> classes = getClasses(getClass());                          // page
    System.out.println("page classes = " + String.join(" > ", classes));

    classes = getClasses(pageContext.getClass());                           // pageContext
    System.out.println("pageContext classes = " + String.join(" > ", classes));
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
