<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manager Site</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #333;
        }
        ol {
            padding-left: 20px;
        }
        li {
            margin-bottom: 10px;
        }
        a {
            color: #0066cc;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Manager Site</h1>
    <ol>
        <li>
            Click <a href="clientsWithHgl.jsp">here</a> to view client with highest glucose level
        </li>
        <li>
            Click <a href="viewAverage.jsp">here</a> to view average glucose level reading
        </li>
        <li>
            Click <a href="viewRange.jsp">here</a> to view glucose level reading range
        </li>
    </ol>
</body>
</html>
