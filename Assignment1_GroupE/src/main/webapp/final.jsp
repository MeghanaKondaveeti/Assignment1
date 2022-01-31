<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<img class="center" width="20%" height="20%" src="java.png">
<link rel="stylesheet"
	href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<title>Final Result</title>
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
						data-icon="edit" data-theme="d">Input Data</a></li>
					<li><a href="final.jsp" data-iconshadow="true"
						data-icon="ui-icon-check" class="ui-btn-active" data-theme="d">Result</a></li>
				</ul>
			</div>
		</header>

		<img class="center" src="lambton-logo.png">

		<%!int maxNumber, minNumber;%>

		<%
		String studentName = request.getParameter("studentname");
		int num1 = Integer.parseInt(request.getParameter("number1"));
		int num2 = Integer.parseInt(request.getParameter("number2"));
		int num3 = Integer.parseInt(request.getParameter("number3"));
		int num4 = Integer.parseInt(request.getParameter("number4"));
		int num5 = Integer.parseInt(request.getParameter("number5"));

		int i;

		// Taking the data into an Array in order to find minimum and maximum score
		int a[] = new int[5];
		a[0] = num1;
		a[1] = num2;
		a[2] = num3;
		a[3] = num4;
		a[4] = num5;

		// Loop to find minimum score out of 5 subjects
		minNumber = num1;
		for (i = 0; i < 5; i++) {
			if (minNumber > a[i]) {
				minNumber = a[i];
			}
		}

		// Loop to find maximum score out of 5 subjects
		maxNumber = num1;
		for (i = 0; i < 5; i++) {
			if (maxNumber < a[i]) {
				maxNumber = a[i];
			}
		}

		// Calculate average
		String grade;
		int average = (num1 + num2 + num3 + num4 + num5) / 5;

		if (average >= 94 && average <= 100) {
			grade = "A+";
		} else if (average >= 87 && average <= 93) {
			grade = "A";
		} else if (average >= 80 && average <= 86) {
			grade = "A-";
		} else if (average >= 77 && average <= 79) {
			grade = "B+";
		} else if (average >= 73 && average <= 76) {
			grade = "B";
		} else if (average >= 70 && average <= 72) {
			grade = "B-";
		} else if (average >= 67 && average <= 69) {
			grade = "C+";
		} else if (average >= 63 && average <= 66) {
			grade = "C";
		} else if (average >= 60 && average <= 62) {
			grade = "C-";
		} else if (average >= 50 && average <= 59) {
			grade = "D";
		} else {
			grade = "F";
		}
		%>

		<p style="text-align: center;">

			<br>
			<%
			out.println(studentName + "\'s average is " + average);
			%>
			<br>
			<%
			out.println(studentName + "\'s grade is " + grade);
			%>
			<br>
			<%
			out.println(studentName + "\'s score is " + minNumber);
			%>
			<br>
			<%
			out.println(studentName + "\'s score is " + maxNumber);
			%>
		</p>
		<br>

		<footer data-role="footer">
			<h2>
				Group Members:<br>Anirudh Vallampatla C0796429<br>Meghana
				Kondaveeti C0784302<br>Srikanth Ajith Kumar Yarram C0793406<br>Vishal
				Kumar C0793379<br>Yamini Rathod C0796390
			</h2>
		</footer>

		<img class="center" width="20%" height="20%" src="java.png"> <a
			href="Login.jsp">Start Over</a>
	</div>
</body>
</html>