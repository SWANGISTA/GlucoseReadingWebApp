<%@ page import="java.util.List" %>
<%@ page import="za.ac.tut.entity.Client" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Client Glucose Range</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
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
        h1 {
            color: #333;
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
    <h1>Client Glucose Range</h1>
    <%
        Integer min = (Integer) request.getAttribute("min");
        Integer max = (Integer) request.getAttribute("max");
        List<Client> clients = (List<Client>) request.getAttribute("clients");
    %>
    <table>
        <tr>
            <th>Min</th>
            <td><%= min %></td>
        </tr>
        <tr>
            <th>Max</th>
            <td><%= max %></td>
        </tr>
    </table>

    <table>
        <tr>
            <th>Client ID</th>
            <th>Client Name</th>
            <th>Glucose Reading</th>
            <th>Category</th>
        </tr>
        <%
            for (Client client : clients) {
        %>
        <tr>
            <td><%= client.getId() %></td>
            <td><%= client.getName() %></td>
            <td><%= client.getGlocoseLevel() %></td>
            <td><%= client.getCategory() %></td>
        </tr>
        <%
            }
        %>
    </table>

    <div class="navigation">
        <p>Press <a href="menu.jsp">here</a> to return to the Main Menu.</p>
        <p>Press <a href="clientSite.jsp">here</a> to return to the Client Menu.</p>
    </div>
</body>
</html>
