<%-- 
    Document   : ResulU2
    Created on : 06-nov-2020, 21:57:34
    Author     : josue
--%>

<%@page import="modelo.Encuesta2"%>
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="modelo.CrearEncuestas"%>
<%@page import="modelo.Pregunta1"%>
<%@page import="modelo.Pregunta2"%>
<%@page import="modelo.Pregunta3"%>
<%@page import="modelo.Pregunta5"%>
<%@page import="modelo.Pregunta4"%> 
<%@page import="java.util.HashMap"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Encuesta</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="css/Slidebar.css" rel="stylesheet" type="text/css"/>
        <script src="js/SlideBar.js" type="text/javascript"></script>
        <script src="js/BuscarEncuesta2.js" type="text/javascript"></script>
    </head>
    <body>
         <%
      Usuario u = (Usuario)session.getAttribute("user");
      if(u == null){
        response.sendRedirect("index.jsp");
        }
      %>
        

  <div class="page-wrapper chiller-theme toggled">
  <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
    <i class="fas fa-bars"></i>
  </a>
  <nav id="sidebar" class="sidebar-wrapper">
    <div class="sidebar-content">
      <div class="sidebar-brand">
        <a href="VistaUsuario.jsp">Deco</a>
        <div id="close-sidebar">
          <i class="fas fa-times"></i>
        </div>
      </div>
        
      <div class="sidebar-header">
        <div class="user-pic">
          <img class="img-responsive img-rounded" src="https://raw.githubusercontent.com/azouaoui-med/pro-sidebar-template/gh-pages/src/img/user.jpg" alt="User picture">
        </div>
        <div class="user-info">
          <span class="user-name">
              <strong>${usuario}</strong>
          </span>
          <span class="user-role">
              <strong>${rol}</strong>
          </span>
          <span class="user-status">
            <i class="fa fa-circle"></i>
            <span>Online</span>
          </span>
        </div>
      </div>
      <!-- sidebar-header  -->
      <div class="sidebar-search">
        <div>
          <div class="input-group">
            <input type="text" class="form-control search-menu" placeholder="Search...">
            <div class="input-group-append">
              <span class="input-group-text">
                <i class="fa fa-search" aria-hidden="true"></i>
              </span>
            </div>
          </div>
        </div>
      </div>
      
      <!-- sidebar-search  -->
      <div class="sidebar-menu">
        <ul>
          <li class="header-menu">
            <span>General</span>
          </li>
          <li>
              <a data-toggle="modal" data-target="#modal_Encuesta1">
              <span>Crear Encuesta</span>
            </a>
          </li>
         
          <li>
            <a href="ResulU1.jsp">
              <span>Resultados E1</span>
            </a>
              <li>
            <a href="ResulU2.jsp">
              <span>Resultados E2</span>
            </a>
              
    </div>
    
  </nav>
          
           <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"></a>
      </li>
      <li class="nav-item dropdown">
      </li>
      <li class="nav-item">
       
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" id="txt_Buscar" onkeyup="doSearch()"/>
    </form>
  </div>
</nav>
          
          <br>
          <br>
          <div class="container">  
         <table class="table" id="tblencuesta2">
    <thead class="thead-dark" style="text-align: center">
      <tr>
        <th>Pregunta1</th>
        <th>Pregunta2</th>
        <th>Pregunta3</th>
        <th>Pregunta4</th>
        <th>Pregunta5</th>
      </tr>
    </thead>
    <tbody id="tbl_encuesta2">
        <%
        Encuesta2 encuesta2 = new Encuesta2();
        DefaultTableModel tabla = new  DefaultTableModel();
        tabla = encuesta2.leerEncuesta2();
        for ( int t=0; t<tabla.getRowCount();t++){
            out.println("<tr data-id="+ tabla.getValueAt(t, 0) +">");
            out.println("<td style='text-align: center'>"+tabla.getValueAt(t,1)+"</td>");
            out.println("<td style='text-align: center'>"+tabla.getValueAt(t,2)+"</td>");
            out.println("<td style='text-align: center'>"+tabla.getValueAt(t,3)+"</td>");
            out.println("<td style='text-align: center'>"+tabla.getValueAt(t,4)+"</td>");
            out.println("<td style='text-align: center'>"+tabla.getValueAt(t,5)+"</td>");
            out.println("</tr>");
        }
        %>
    </tbody>
  </table>
          </div>
</div>
    </body>
</html>
