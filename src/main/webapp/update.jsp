<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>修改品牌</title>
</head>
<body>
<h3>修改品牌</h3>
<form action="/brand_demo_war_exploded/updateServlet" method="post">

    <%--隐藏域，提交id--%>
    <input type="hidden" name="id" value="${brand1.id}">
    品牌名称：<input name="brandName" value="${brand1.brandName}"><br>
    企业名称：<input name="companyName" value="${brand1.companyName}"><br>
    排序：<input name="ordered" value="${brand1.ordered}"><br>
    描述信息：<textarea rows="5" cols="20" name="description">${brand1.description} </textarea><br>
    状态：
    <c:if test="${brand1.status == 0}">

        <input type="radio" name="status" value="0" checked>禁用
        <input type="radio" name="status" value="1">启用<br>
    </c:if>

    <c:if test="${brand1.status == 1}">

        <input type="radio" name="status" value="0" >禁用
        <input type="radio" name="status" value="1" checked>启用<br>
    </c:if>


    <input type="submit" value="提交">
</form>
</body>
</html>