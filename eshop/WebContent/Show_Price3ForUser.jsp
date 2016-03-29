<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table id="body6b">
				<%
					String price_user = request.getParameter("Price");
				    System.out.println("Price is"+price_user);
					String type = request.getParameter("Type");
					System.out.println("Type is"+type);
					String category=request.getParameter("Category");
					System.out.println("Category is"+category);

					  Connection con = Conct.conect();
					//String sql="Select  DISTINCT ad1.Product_Id,ad2.Price, ad2.Tagline, ad1.ColorName, ad1.Filename from admin_imageinsrt_men ad1 inner join admin_productinsert_men ad2 on ad1.Product_Id=ad2.Product_Id and Type=? and Category=?";
					String sql = "Select  DISTINCT ad1.Product_Id, ad1.ColorName from admin_imageinsrt_men ad1 inner join admin_productinsert_men ad2 on ad1.Product_Id=ad2.Product_Id and ad2.Price>='1500.00' And ad2.Price<='1999.00' and Category=? and Type=?";
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setString(1, category);
					ps.setString(2,type);
					ResultSet rs = ps.executeQuery();
					boolean status = true;
					Double price = 0.0;
					String Filename = "";
					while (status)
					{
				%><tr>

					<%
						for (int i = 1; i <= 3; i++)
							{

								if (rs.next())
								{
									String product_id = rs.getString("Product_Id");
									String Colorname = rs.getString("ColorName");
									String sql2 = "Select  ad2.Price, ad2.Tagline,ad1.Filename from admin_imageinsrt_men ad1 inner join admin_productinsert_men ad2 on ad1.Product_Id=ad2.Product_Id and ad1.Product_Id=?";
									//Connection con1=Conct.conect();
									PreparedStatement ps1 = con.prepareStatement(sql2);
									ps1.setString(1, product_id);

									ResultSet rs1 = ps1.executeQuery();
									if (rs1.next())
									{
										price = rs1.getDouble("Price");
										String Tagline = rs1.getString("Tagline");
										Filename = rs1.getString("Filename");
					%><td><table id="MainThumb">
							<tr>
								<td><a target="_blank"
									href="MenShirtsRed1.jsp?Pid=<%=product_id%> &Category=<%=category%> &Price=<%=price%> &Colorname=<%=Colorname%> &Filename=<%=Filename%>">
										<img src="Image?pid=<%=product_id%> " height="340" width="240"></img>
								</a></td>
							</tr>
							<tr>
								<td style="color: white; text-shadow: 3px 2px 5px black; font-size: 18px; padding-bottom: 3px;">&nbsp&nbsp<%=Tagline%></td>
							</tr>
							<tr>
								<td style="color: white; text-shadow: 3px 2px 5px black;">&nbsp&nbsp<i class="fa fa-inr fa-lg"></i>&nbsp&nbsp<%=price%></td>

							</tr>
						</table></td>


					<%
						}
								}
								else
								{
									status = false;
									break;
								}
							}
					%>
				</tr>
				<%
					} 
				%>


			</table>
			
</body>
</html>