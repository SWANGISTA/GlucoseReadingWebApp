<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Average Glucose Reading</title>
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
        table {
            width: 50%;
            border-collapse: collapse;
            background-color: #fff;
            margin-top: 20px;
        }
        td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
            font-size: 1.2em;
        }
        .navigation {
            margin-top: 20px;
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
    <h1>Average Glucose Reading</h1>
    <%
        Double avg = (Double) request.getAttribute("avg");
    %>
    <table>
        <tr>
            <td><%= avg %></td>
        </tr>
    </table>
    <div class="navigation">
        <p>Press <a href="menu.jsp">here</a> to return to the Main Menu.</p>
        <p>Press <a href="clientSite.jsp">here</a> to return to the Client Menu.</p>
    </div>
</body>
</html>
