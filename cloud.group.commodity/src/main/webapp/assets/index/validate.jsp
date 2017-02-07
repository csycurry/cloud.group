<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%
String rand = (String)session.getAttribute("rand");
String input = request.getParameter("rand");
if(rand.equals(input)){
out.print("1");
} else{
out.print("请输入正确的验证码");
}
%> 