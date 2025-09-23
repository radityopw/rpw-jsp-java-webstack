<%
web.HelloWorld hw = new web.HelloWorld();
%>
<html>
<head>
	<link rel="stylesheet" href="https://unpkg.com/mvp.css"> 
</head>
<body>
	<h1>Welcome</h1>
	<h2><%=hw.helloWorld("Testing")%></h2>
</body>
</html>