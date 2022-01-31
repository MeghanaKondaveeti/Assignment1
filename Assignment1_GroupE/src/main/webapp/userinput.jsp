<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css" />
<link rel="stylesheet"
	href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<title>User Input</title>
</head>


<body>

	<div data-role="page">
		<header data-role="header">
			<h2>
				CSD-4464 Programming Java EE.<br> Assignment 1.<br>
				Prepared by Group E: Aniruddh, Meghna, Srikanth, Vishal, Yamini.<br>Date:
				24th Jan 2022.
			</h2>
			<div data-role="navbar">
				<ul>
					<li><a href="Login.jsp" data-iconshadow="true"
						data-icon="home" data-theme="d">Login</a></li>
					<li><a href="userinput.jsp" data-iconshadow="true"
						data-icon="edit" data-theme="d" class="ui-btn-active">Input
							Data</a></li>
					<li><a href="final.jsp" data-iconshadow="true"
						data-icon="ui-icon-check" data-theme="d">Result</a></li>
				</ul>
			</div>
		</header>

		<%-- Userinput page would collect the information from end user regarding student's name and marks in 5 subjects --%>
		<%-- Entered information would be directed to final.jsp file which would perform calculations --%>

		<form action="final.jsp" method="post">
			Student Name : <input type="text" name="studentname"><br>

			Marks in First Subject : <input type="text" name="number1"><br>
			Marks in Second Subject : <input type="text" name="number2"><br>
			Marks in Third Subject : <input type="text" name="number3"><br>
			Marks in Fourth Subject : <input type="text" name="number4"><br>
			Marks in Fifth Subject : <input type="text" name="number5"><br>

			<input type="submit" style="background-color: red;" value="Submit">
		</form>

		<footer data-role="footer">
			<h2>
				Group Members:<br>Anirudh Vallampatla C0796429<br>Meghana
				Kondaveeti C0784302<br>Srikanth Ajith Kumar Yarram C0793406<br>Vishal
				Kumar C0793379<br>Yamini Rathod C0796390
			</h2>
		</footer>

		<img class="center" width="20%" height="20%" src="java.png">

	</div>
</body>
</html>