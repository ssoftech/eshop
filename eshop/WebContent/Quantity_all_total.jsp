<%@page import="Bean.TotalBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.Connection,java.sql.PreparedStatement,Bean.Conct"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	String email=request.getParameter("email");
	System.out.println(email);
	double total_price=0;
Connection con=Conct.conect();
String sql="select Total_Price from registered_cart where Email=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,email);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
	System.out.println(total_price+"+"+rs.getDouble("Total_Price"));
	total_price+=rs.getDouble("Total_Price");
	System.out.println("="+total_price);
}
out.println(total_price);

}
catch(Exception e)
{
	
} 
   /* double t=0;
   ArrayList<TotalBean> tt=(ArrayList<TotalBean>)session.getAttribute("cc1");
   while(tt!=null)
   {
              for(TotalBean tb:tt)
              {
            	  t=t+tb.getTotal_price();
              }
              out.println("ii "+t);
   }
   out.println("rrr"); */
              %>
           
</body>
</html>