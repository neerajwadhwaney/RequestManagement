<%@ page import="pojo.RequestPojo" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 10-05-2024
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Table with Buttons</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        .btn-group > .btn {
            flex: 1;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h2>Pending Requests</h2>
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <form>
                <th>SNO</th>
                <th>TITLE</th>
                <th>DESCRIPTION</th>
                <th>REQUEST RAISE BY</th>
                <th>DATE & TIME</th>
                <th>DEPARTMENT</th>
                <th>APPROVAL DATE</th>
                <th>APPROVED BY</th>
                <th>STATUS</th>
            </form>>
        </tr>
        </thead>
        <tbody>
        <%
            List<RequestPojo> rList=(List<RequestPojo>) request.getAttribute("rList");
            for(RequestPojo r:rList) {
        %>
        <tr>
            <form action="UpdateRequestControllerServlet">
            <td><%=r.getSno() %></td>
            <td><%=r.getTitle()%></td>
            <td><%=r.getDescription()%></td>
            <td><%=r.getRaisedBy()%></td>
            <td><%=r.getRequestDate()%></td>
            <td><%=r.getDepartment()%></td>
            <td><%=r.getApprovalDate()%></td>
            <td><%=r.getApprovedBy()%></td>
            <td>
                <div class="btn-group btn-block" role="group">
                    <button type="submit" name="approve" value="<%=r.getSno() %>" class="btn btn-success btn-sm"><i class="fas fa-check"></i> Approve</button>
                    <button type="submit" name="deny" value="<%=r.getSno() %>" class="btn btn-danger btn-sm"><i class="fas fa-times"></i> Deny</button>
                </div>
            </td>
            </form>
        </tr>
        <%}%>
        <!-- More rows can be added here -->
        </tbody>
    </table>
</div>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
