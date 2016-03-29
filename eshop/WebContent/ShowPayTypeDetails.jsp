<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*, Bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css1/payGateStyle.css" type="text/css"
	media="screen" />

</head>
<body>

	<%
		String str = request.getParameter("UserInfo");
		System.out.println(str + "UserInfo visible");
		String pay=request.getParameter("payment");
		System.out.println("Pay"+pay);
		if(pay.equals("DebitCard"))
		{
	%>
	
	

	
				
				<%
					Connection con = Conct.conect();
					String sql = "select FirstName, LastName, Email, PhoneNo from user_register where Email=?";
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setString(1, str);

					ResultSet rs = ps.executeQuery();
					if (rs.next()) {
				%>
				
				<div class="content" id="payment">
				<div class="left credit_card">
					<form class="go-right">
						<div>
							<input type="text" name="card_number" value="" id="card_number"
								placeholder="16-Digit Card No." data-trigger="change"
								data-validation-minlength="1" data-type="name"
								data-required="true"
								data-error-message="Enter Your Credit Card Number" /><label
								for="card_number">Card Number</label>
						</div>
						<div>
							<div class="expiry">
								<div class="month_select">
									<select name="exp_month" value="" id="exp_month" placeholder=""
										data-trigger="change" data-type="name" data-required="true"
										data-error-message="Enter Your Credit Card Expiration Date">
										<option value="1">01 (Jan)</option>
										<option value="2">02 (Feb)</option>
										<option value="3">03 (Mar)</option>
										<option value="4">04 (Apr)</option>
										<option value="5">05 (May)</option>
										<option value="6">06 (Jun)</option>
										<option value="7">07 (Jul)</option>
										<option value="8">08 (Aug)</option>
										<option value="9">09 (Sep)</option>
										<option value="10">10 (Oct)</option>
										<option value="11">11 (Nov)</option>
										<option value="12">12 (Dec)</option>
									</select>
								</div>
								<span class="divider">-</span>
								<div class="year_select">
									<select name="exp_year" value="" id="exp_year" placeholder=""
										data-trigger="change" data-type="name" data-required="true"
										data-error-message="Enter Your Credit Card Expiration Date">
										<option value="1">16</option>
										<option value="2">17</option>
										<option value="3">18</option>
										<option value="4">19</option>
										<option value="5">20</option>
										<option value="6">21</option>
										<option value="7">22</option>
										<option value="8">23</option>
										<option value="9">24</option>
										<option value="10">25</option>
										<option value="11">26</option>
										<option value="12">27</option>
									</select>
								</div>
							</div>
							<label class="exp_date" for="Exp_Date">Exp Date</label>
						</div>
						<div class="sec_num">
							<div>
								<input type="text" name="ccv" value="" id="ccv"
									placeholder="3-Digit CVV No." data-trigger="change"
									data-validation-minlength="3" data-type="name"
									data-required="true"
									data-error-message="Enter Your Card Security Code" /> <label
									for="ccv">Security Code</label>
							</div>
						</div>
					</form>
					
					<%
						}
					%>
					
				</div>
				<div class="right">
					<div class="accepted">
						<span><img src="http://i.imgur.com/Z5HVIOt.png"></span> 
						<span><img src="http://i.imgur.com/Le0Vvgx.png"></span> 
						<span><img src="http://i.imgur.com/Pu4e7AT.png"></span> 
						<span><img src="http://i.imgur.com/ewMjaHv.png"></span> 
						<span><img src="http://i.imgur.com/3LmmFFV.png"></span>
					</div>
					<div class="secured">
						<img class="lock" src="http://i.imgur.com/hHuibOR.png">
						<p class="security info">What, well you mean like a date? Doc?
							Am I to understand you're still hanging around with Doctor Emmett
							Brown, McFly? Tardy slip for you, Miss Parker. And one for you
							McFly I believe that makes four in a row. Now let me give you a
							nickle's worth of advice, young man. This so called Doctor Brown
							is dangerous, he's a real nuttcase.</p>
					</div>
				</div>
				<a class="continue" href="#">Continue</a>

			</div>
			<%
		}
			%>
</body>
</html>