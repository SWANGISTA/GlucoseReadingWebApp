<%-- 
    Document   : client_with_high_gl
    Created on : May 13, 2025, 8:11:20 PM
    Author     : USER
--%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Client with Highest Glucose Level</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f9f9f9;
                margin: 20px;
            }
            h1 {
                color: #2c3e50;
                text-align: center;
            }
            table {
                width: 60%;
                margin: 0 auto;
                border-collapse: collapse;
                background-color: #ffffff;
                box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            }
            td {
                padding: 12px 15px;
                border-bottom: 1px solid #dddddd;
            }
            tr:hover {
                background-color: #f1f1f1;
            }
            a {
                color: #3498db;
                text-decoration: none;
            }
            a:hover {
                text-decoration: underline;
            }
            p {
                text-align: center;
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <h1>Client with Highest Glucose Level</h1>
        <%
            List<Client> clients = (List<Client>) request.getAttribute("clients");
            Client client = new Client();
        %>
        <table>
            <%
                for(int x = 0 ; x < clients.size(); x++) {
                    client = clients.get(x);
            %>
            <tr>
                <td><strong>Client ID:</strong></td>
                <td><%= client.getId() %></td>
            </tr>
            <tr>
                <td><strong>Client Name:</strong></td>
                <td><%= client.getName() %></td>
            </tr>
            <tr>
                <td><strong>Glucose Reading:</strong></td>
                <td><%= client.getGlocoseLevel() %></td>
            </tr>
            <tr>
                <td><strong>Category:</strong></td>
                <td><%= client.getCategory() %></td>
            </tr>
            <%
                }
            %>
        </table>
        <p>
            Press <a href="menu.jsp">here</a> to return to the Main Menu.
        </p>
        <p>
            Press <a href="clientSite.jsp">here</a> to return to the Client Menu.
        </p>
    </body>
</html>
