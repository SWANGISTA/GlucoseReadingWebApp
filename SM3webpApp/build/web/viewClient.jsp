<%-- 
    Document   : viewClient
    Created on : May 13, 2025, 9:44:51 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
        }
        table {
            width: 100%;
        }
        input[type="submit"] {
            background-color: #0066cc;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #005bb5;
        }
    </style>
</head>
<body>
    <form action="viewSpecific.do" method="POST">
        <table>
            <tr>
                <td>id : </td>
                <td>
                    <input type="text" name="id" required=""/>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="viewClient" value="View Client" />
                </td>
            </tr>
        </table>
    </form>
</body>

</html>
