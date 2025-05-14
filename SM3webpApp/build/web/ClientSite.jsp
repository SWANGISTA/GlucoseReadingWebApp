<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Client Site</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f3;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #333;
        }
        ol {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            max-width: 500px;
            margin: auto;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        li {
            margin-bottom: 10px;
        }
        a {
            color: #4CAF50;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Client Site</h1>
    <ol>
        <li>
            Click <a href="addClient.jsp">here</a> to add glucose level
        </li>
        <li>
            Click <a href="viewClient.jsp">here</a> to view all your glucose level
        </li>
    </ol>
</body>
</html>
