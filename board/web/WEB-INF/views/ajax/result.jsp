<%@ page contentType="text/plain;charset=UTF-8" language="java" %>
<%--plain :: 데이터셋--%>
<%--json--%>
<%
    boolean usable = (boolean) request.getAttribute("result");
%>
{
    "usable" : "<%=usable%>"
}



