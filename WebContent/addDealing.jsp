<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!-- 使用strut2标签库 -->
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>addSupplier</title>
</head>
<body>
<h1>入库单的页面</h1>
<s:form action="dealing_save.action" method="post" theme="simple">
    <table border="1" width="500">
     	<tr>
            <td>adminid</td>
            <td><s:textfield name="admin.adminId"/> </td>
        </tr>
        <tr>
            <td>customerId</td>
            <td><s:textfield name="customer.customerId"/> </td>
        </tr>
        
        <tr>
            <td>商品id</td>
            <td><s:textfield name="good.goodId"/> </td>
        </tr>
         <tr>
            <td>数量</td>
            <td> <s:textfield name="dealing.num"/> </td>
        </tr>
          <tr>
            <td>价格</td>
            <td><s:textfield name="dealing.price"/> </td>
        </tr>
        <tr>
            <td colspan="2"> <s:submit value="添加"/> </td>
        </tr>
    </table>
</s:form>
</body>
</html>
</body>
</html>