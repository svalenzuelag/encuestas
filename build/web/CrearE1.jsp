<%-- 
    Document   : CrearE1
    Created on : 06-nov-2020, 20:14:20
    Author     : josue
--%>

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
          
          <ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link active navbar-btn btn-danger" href="CerrarSesion">Cerrar Sesion</a>
  </li>
</ul>
          <br>
          <br>

         <div class="container">
            <div class="modal fade" id="modal_Encuesta1" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">

      <!-- Modal content -->
      <div class="modal-content ">
	<div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Encuesta 1</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body ">
      <form action="sr_respuestas" method="post" class="form-group">
                <label for="lbl_id">ID</label>
                <input type="text" name="txt_id" id="txt_id" class="form-control" value="0" readonly>
                <label for="lbl_P1">Pregunta 1</label>
                <input type="text" name="txt_P1" id="txt_P1" class="form-control"  required>
                <label for="lbl_P2">Pregunta 2</label>
                <input type="text" name="txt_P2" id="txt_P2" class="form-control"  required>
                <label for="lbl_P3">Pregunta 3</label>
                <input type="text" name="txt_P3" id="txt_P3" class="form-control"  required>
                <label for="lbl_P4">Pregunta 4</label>
                <input type="text" name="txt_P4" id="txt_P4" class="form-control"  required>
                <label for="lbl_P5">Pregunta 5</label>
                <input type="text" name="txt_P5" id="txt_P5" class="form-control"  required>
                <label for="lbl_P6">Pregunta 6</label>
                <input type="text" name="txt_P6" id="txt_P6" class="form-control"  required>
                <label for="lbl_P7">Pregunta 7</label>
                <input type="text" name="txt_P7" id="txt_P7" class="form-control"  required>
                <label for="lbl_P8">Pregunta 8</label>
                <input type="text" name="txt_P8" id="txt_P8" class="form-control"  required>
                <label for="lbl_P9">Pregunta 9</label>
                <input type="text" name="txt_P9" id="txt_P9" class="form-control"  required>
                <label for="lbl_P10">Pregunta 10</label>
                <input type="text" name="txt_P10" id="txt_P10" class="form-control"  required>
                 <div class="container align-content-center">
                        <button  name="btn_agregar" id="btn_agregar" value="agregar"class="btn btn-success btn-lg">Agregar</button>
                        <button  name="btn_modificar" id="btn_modificar" value="modificar"class="btn btn-info btn-lg">Modificar</button>
                        <button  name="btn_eliminar" id="btn_eliminar" value="eliminar"class="btn btn-danger btn-lg"onclick="javascript:if(!confirm('Desea Eliminar Este Registro'))return false">Eliminar</button>
                        </div>
        </form>
      </div>
      

    </div>
  </div>
</div>
</div>
        </div>  
          
          
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
        CrearEncuestas crearencuestas = new CrearEncuestas();
        DefaultTableModel tabla = new  DefaultTableModel();
        tabla = crearencuestas.leerPreguntas();
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
          
</div>
          
          
          
        
       <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
       <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script> 
    </body>
</html>

