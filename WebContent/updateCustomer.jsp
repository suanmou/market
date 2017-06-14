<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!-- 使用strut2标签库 -->
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>updateCustomer</title>
</head>
<body>
<h1>修改会员的页面</h1>
<s:form action="customer_update.action" method="post" theme="simple">
    <table border="1" width="500">
        <tr>
            <td>会员id</td>
            <td> <s:textfield name="customerId"/> </td>
        </tr>
        <tr>
            <td>会员姓名</td>
            <td> <s:textfield name="name"/> </td>
        </tr>
         <tr>
            <td>性别</td>
            <td> <s:textfield name="sex"/> </td>
        </tr>
         <tr>
            <td>手机</td>
            <td> <s:textfield name="phone"/> </td>
        </tr>
        <tr>
            <td colspan="2"> <s:submit value="修改"/> </td>
        </tr>
    </table>
</s:form>
</body>
</html>