<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <link href="<s:url value='/css/main.css'/>" rel="stylesheet" type="text/css"/>
    <title><s:text name="label.employees"/></title>
</head>
<body>
<div class="titleDiv"><s:text name="application.title"/></div>
<h1><s:text name="label.employees"/></h1>
<s:url id="url" action="inputEmployee" />
<a href="<s:property value="#url"/>"><s:text name="label.employee.add"/></a>
<br/><br/>
<table class="borderAll">
    <tr>
        <th><s:text name="label.firstName"/></th>
        <th><s:text name="label.lastName"/></th>
        <th><s:text name="label.age"/></th>
        <th> </th>
    </tr>
    <s:iterator value="employees" status="status">
        <tr class="<s:if test="#status.even">even</s:if><s:else>odd</s:else>">
            <td class="nowrap"><s:property value="firstName"/></td>
            <td class="nowrap"><s:property value="lastName"/></td>
            <td class="nowrap"><s:property value="age"/></td>
            <td class="nowrap">
                <s:url action="inputEmployee" id="url">
                    <s:param name="employee.employeeId" value="employeeId"/>
                </s:url>
                <a href="<s:property value="#url"/>"><s:text name="label.employee.edit"/></a>
                   
                <s:url action="deleteEmployee" id="url">
                    <s:param name="employee.employeeId" value="employeeId"/>
                </s:url>
                <a href="<s:property value="#url"/>"><s:text name="label.employee.delete"/></a>
            </td>
        </tr>
    </s:iterator>
    </table>
</body>
</html>
