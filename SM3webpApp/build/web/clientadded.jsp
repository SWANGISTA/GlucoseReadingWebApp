<%@ page import="za.ac.tut.entity.Client" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Client Added</title>
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
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        a {
            color: #0066cc;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        .navigation {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h1>Client Added</h1>
    <%
        Client client = (Client) request.getAttribute("client");
    %>
    <table>
        <tr>
            <td>Client ID:</td>
            <td><%= client.getId() %></td>
        </tr>
        <tr>
            <td>Client Name:</td>
            <td><%= client.getName() %></td>
        </tr>
        <tr>
            <td>Glucose Reading:</td>
            <td><%= client.getGlocoseLevel() %></td>
        </tr>
        <tr>
            <td>Category:</td>
            <td><%= client.getCategory() %></td>
        </tr>
    </table>
    <div class="navigation">
        <p>Press <a href="menu.jsp">here</a> to return to the Main Menu.</p>
        <p>Press <a href="ClientSite.jsp">here</a> to return to the Client Menu.</p>
    </div>
</body>
</html>
