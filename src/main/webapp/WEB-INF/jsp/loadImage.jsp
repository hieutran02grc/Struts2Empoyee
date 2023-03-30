<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Display Image</title>
</head>
<body>
<h1>Hello</h1>
<s:url var="imageAction" action="image"/>
<img src="<s:property value='%{#imageAction}?imagePath=/path/to/image.jpg'/>"/>
</body>
</html>
