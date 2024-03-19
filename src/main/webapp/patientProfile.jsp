<%--
  Created by IntelliJ IDEA.
  User: anthonynkyi
  Date: 15/03/2024
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap"%>

<html>
<head>
    <jsp:include page="/header.jsp"/>
    <title>Patient Data App: View profile</title>
</head>
<body>
    <section class="main">
        <jsp:include page="/topnav.jsp"/>
        <div class="content">
            <h1>View patient profile</h1>
            <p><b>Patient ID:</b> <%=(String) request.getAttribute("ID")%></p>
            <p><b>Patient Name:</b> <%=(String) request.getAttribute("PREFIX")%> <%=(String) request.getAttribute("FIRST")%> <%=(String) request.getAttribute("LAST")%> <%=(String) request.getAttribute("SUFFIX")%></p>
            <p><b>Gender:</b> <%=(String) request.getAttribute("GENDER")%></p>
            <p><b>Date of birth:</b> <%=(String) request.getAttribute("BIRTHDATE")%></p>
            <p><b>Place of birth:</b> <%=(String) request.getAttribute("BIRTHPLACE")%></p>
            <% if (!((String) request.getAttribute("DEATHDATE")).equals("")) { %>
                <p><b>Deathdate:</b> <%= request.getAttribute("DEATHDATE") %></p>
            <% } %>

            <p><b>Last known address:</b> <%=(String) request.getAttribute("ADDRESS")%>, <%=(String) request.getAttribute("CITY")%>, <%=(String) request.getAttribute("STATE")%>, <%=(String) request.getAttribute("ZIP")%></p>
            <p><b>Race:</b> <%=(String) request.getAttribute("RACE")%></p>
            <p><b>Ethnicity:</b> <%=(String) request.getAttribute("ETHNICITY")%></p>
            <p><b>Social security number:</b> <%=(String) request.getAttribute("SSN")%></p>

            <% if (!((String) request.getAttribute("DRIVERS")).equals("")) { %>
            <p><b>Driving licence number:</b> <%= request.getAttribute("DRIVERS") %></p>
            <% } %>

            <% if (!((String) request.getAttribute("PASSPORT")).equals("")) { %>
            <p><b>Passport:</b> <%= request.getAttribute("PASSPORT") %></p>
            <% } %>

            <p><b>Marital status:</b> <%=(String) request.getAttribute("MARITAL")%></p>

            <% if (!((String) request.getAttribute("MAIDEN")).equals("")) { %>
            <p><b>Maiden name:</b> <%= request.getAttribute("MAIDEN") %></p>
            <% } %>
            <br/>
            <jsp:include page="/footer.jsp"/>
        </div>
    </section>

</body>
</html>
