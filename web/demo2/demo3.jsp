<%--
  Created by IntelliJ IDEA.
  User: lightwingng
  Date: 2018/7/14
  Time: 22:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
</head>
<body>
<h1>UI 标签</h1>
<h3>传统的表单</h3>
<form action="${ pageContext.request.contextPath }/uiAction.action" method="post">
    <input type="hidden" name="id"/>
    用户名:<label>
    <input type="text" name="name"/>
</label><br/>
    密码:<label>
    <input type="password" name="password">
</label><br/>
    年龄:<label>
    <input type="text" name="age">
</label><br/>
    性别:<label>
    <input type="radio" name="sex" value="男">
</label>男
    <label>
        <input type="radio" name="sex" value="女">
    </label>女<br/>
    籍贯:<label>
    <select name="city">
        <option value="">-请选择-</option>
        <option value="北京">北京</option>
        <option value="上海">上海</option>
        <option value="深圳">深圳</option>
        <option value="韩国">韩国</option>
    </select>
</label><br/>
    爱好:<label>
    <input type="checkbox" name="hobby" value="basketball"/>
</label>篮球
    <label>
        <input type="checkbox" name="hobby" value="football"/>
    </label>足球
    <label>
        <input type="checkbox" name="hobby" value="volleyball"/>
    </label>排球
    <label>
        <input type="checkbox" name="hobby" value="pingpang"/>
    </label>乒乓球<br/>
    介绍:<label>
    <textarea name="info" cols="8" rows="2"></textarea>
</label><br/>
    <input type="submit" value="提交"/>
</form>
<s:debug></s:debug>
<h3>UI标签的表单</h3>
<s:form action="uiAction" namespace="/" method="post">
    <s:hidden name="id"/>
    <s:textfield name="name" label="用户名"/>
    <s:password name="password" label="密码" showPassword="true"/>
    <s:textfield name="age" label="年龄"/>
    <s:radio list="{'男','女'}" name="sex" label="性别"/>
    <s:select list="{'北京', '上海', '深圳', '韩国'}" name="city" label="籍贯" headerKey=""
              headerValue="-请选择-"/>
    <s:checkboxlist
            list="#{ 'basketball': '篮球', 'football': '足球','volleyball':'排球','pingpang':'乒乓球'}"
            name="hobby" label="爱好"/>
    <s:textarea name="info" cols="8" rows="2" label="介绍">
    </s:textarea>
    <s:submit value="提交"/>
</s:form>
</body>
</html>
