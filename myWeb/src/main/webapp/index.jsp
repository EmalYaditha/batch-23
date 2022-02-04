<%-- 
    Document   : index
    Created on : Jan 31, 2022, 7:37:14 PM
    Author     : emaly
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.myweb.Util"%>
<%@page import="com.mycompany.myweb.Person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="main.css">
        <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.css">
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.js"></script>
    </head>
    <body>
        <%           
//        String greeting ="Hello";    
//        Person p = new Person();
//        p.setFirstName("Daito");
//        p.setLastName("Sho");       
//        String name ="John";
       
       List<Person> persons = Util.getPersons();
       
        int i = 0;
        while(i < persons.size()) {
            out.print("<p1>" + persons.get(i).getFullName() + "<p1></br>");
            i++;
    
}
               
        %>
<!--<h1 class="r"><% // out.print(greeting + " " + p.getFullName() + "!!!"); %></h1>-->    
        <br>
<table id="datatable" >
    <thead>
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>NIC</th>
    </tr>
    </thead>
    <tbody>
    <%
        // have to use ?username=Name in the url
        String username = request.getParameter("username");
        String id = request.getParameter("id");
        if (username != null) {
            out.print("<h1>" + username + "</hl>");
        }
        if (id != null) {
            out.print("<h1>" + id + "</h1>");
        }
        
        for (Person p : Util.getPersons()) { %>
    <tr>
        <td><%out.print(p.getFirstName());%></td>
        <td><%out.print(p.getLastName());%></td>
        <td><%out.print(p.getNic());%></td>
    </tr>
    <% } %>
    </tbody>
</table>      
    <script>$(document).ready( function () {
    $('#datatable').DataTable();
} );</script>
    </body>
</html>
