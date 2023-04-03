<%--
  Created by IntelliJ IDEA.
  User: hieut
  Date: 4/3/2023
  Time: 11:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:url var="videoAction" action="video"/>
<video width="320" height="240" controls>
    <source src="<s:property value='%{#videoAction}?vidPath=/path/to/video.mp4'/>" type="video/mp4">
    Your browser does not support the video tag.
</video>

</body>
</html>
