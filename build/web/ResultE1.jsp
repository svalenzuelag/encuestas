<%-- 
    Document   : ResultE1
    Created on : 29-oct-2020, 22:20:08
    Author     : josue
--%>

<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="modelo.Encuesta1"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultados Encuesta 1</title>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
                <script src="js/BuscarEncuesta1.js" type="text/javascript"></script>
    
    </head>
  <body>
      
      <%
      Usuario u = (Usuario)session.getAttribute("user");
      if(u == null){
        response.sendRedirect("index.jsp");
        }
      %>
      
      <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
          
  <a class="navbar-brand" href="Principal.jsp">INICIO</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="ResultE1.jsp">Resultados E1 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="ResultE2.jsp">Resultados E2</a>
      </li>
      <form class="form-inline">
   <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" id="txt_Buscar" onkeyup="doSearch()"/>
    
  </form>
      
  </div>
</nav>
      <br/>
       <br/>
        <br/>
        
         <div id="content" class="p-4 p-md-5">
              <div class="container">
      <table class="table" id="tblencuesta1">
    <thead class="thead-dark" style="text-align: center">
      <tr>
        <th>Pregunta1</th>
        <th>Pregunta2</th>
        <th>Pregunta3</th>
        <th>Pregunta4</th>
        <th>Pregunta5</th>
        <th>Pregunta6</th>
        <th>Pregunta7</th>
        <th>Pregunta8</th>
        <th>Pregunta9</th>
        <th>Pregunta10</th>
      </tr>
    </thead>
    <tbody id="tbl_encuesta1">
        <%
        Encuesta1 encuesta1 = new Encuesta1();
        DefaultTableModel tabla = new  DefaultTableModel();
        tabla = encuesta1.leerEncuesta1();
        for ( int t=0; t<tabla.getRowCount();t++){
            out.println("<tr data-id="+ tabla.getValueAt(t, 0) +">");
            out.println("<td style='text-align: center'>"+tabla.getValueAt(t,1)+"</td>");
            out.println("<td style='text-align: center'>"+tabla.getValueAt(t,2)+"</td>");
            out.println("<td style='text-align: center'>"+tabla.getValueAt(t,3)+"</td>");
            out.println("<td style='text-align: center'>"+tabla.getValueAt(t,4)+"</td>");
            out.println("<td style='text-align: center'>"+tabla.getValueAt(t,5)+"</td>");
            out.println("<td style='text-align: center'>"+tabla.getValueAt(t,6)+"</td>");
            out.println("<td style='text-align: center'>"+tabla.getValueAt(t,7)+"</td>");
            out.println("<td style='text-align: center'>"+tabla.getValueAt(t,8)+"</td>");
            out.println("<td style='text-align: center'>"+tabla.getValueAt(t,9)+"</td>");
            out.println("<td style='text-align: center'>"+tabla.getValueAt(t,10)+"</td>");
            out.println("</tr>");
        }
        %>
    </tbody>
  </table>
              </div>
         </div>
    </body>
</html>
