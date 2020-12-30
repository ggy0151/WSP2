<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<title>Guru Form</title>
</head>
<body>
<form name="fileForm" enctype="multipart/form-data" action="action_form_process.jsp" method="post">
<p>UserName: <input type="text" name="name">
<p>Subject: <input type="text" name="subject"/>
<p>File: <input type="file" name="filename">
<input type="submit" value="upload">
</form>
</body>
</html>