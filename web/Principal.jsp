<%-- 
    Document   : Principal
    Created on : 06-nov-2020, 18:15:12
    Author     : josue
--%>

<%@page import="modelo.Usuario"%>
<%@page import="modelo.Pregunta5"%>
<%@page import="modelo.Pregunta4"%>
<%@page import="modelo.Pregunta3"%>
<%@page import="modelo.Pregunta2"%>
<%@page import="java.util.HashMap"%>
<%@page import="modelo.Pregunta1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
      
  </div>
    
  
</nav>
      <div class="btn-group-vertical" role="group" aria-label="Basic example">
        <button type="button" class="btn btn-secondary "></button>
        <button type="button" class="btn btn-secondary "></button>
        <button type="button" class="btn btn-secondary fa fa-book "   data-toggle="modal" data-target="#modal_Encuesta1"onclick="limpiar()">Encuesta 1</button>
        <button type="button" class="btn btn-secondary fa fa-book"   data-toggle="modal" data-target="#modal_Encuesta2"onclick="limpiar()">Encuesta 2</button>
        <button type="button" class="btn btn-secondary fa fa-book"   data-toggle="modal" data-target="#modal_Encuesta3"onclick="limpiar()">Encuesta 3</button>
        <button type="button" class="btn btn-secondary "></button>
        <button type="button" class="btn btn-secondary "></button>
       
        <button type="button" class="btn btn-secondary"></button>
        <button type="button" class="btn btn-secondary "></button>
        <button type="button" class="btn btn-secondary "></button>
        <button type="button" class="btn btn-secondary "></button>
        <button type="button" class="btn btn-secondary "></button>
        <button type="button" class="btn btn-secondary "></button>
        <button type="button" class="btn btn-secondary "></button>
        <button type="button" class="btn btn-secondary "></button>
        <button type="button" class="btn btn-secondary "></button>
        <button type="button" class="btn btn-secondary "></button>
        <button type="button" class="btn btn-secondary "></button>
        <button type="button" class="btn btn-secondary "></button>
        <button type="button" class="btn btn-secondary "></button>
        <button type="button" class="btn btn-secondary "></button>
        <button type="button" class="btn btn-secondary "></button>
       
        
        <a href="CerrarSesion" type="button" class="btn btn-danger btn-lg">Salir</a>
    </div>
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
      <form action="sr_encuesta1" method="post" class="form-group">
                <label for="lbl_id">ID</label>
                <input type="text" name="txt_id" id="txt_id" class="form-control" value="0" readonly>
                <label for="lbl_P1">¿Está satisfecho con la forma en que nuestro agente / representante de servicio al cliente atendió su consulta?</label>
                <input type="text" name="txt_P1" id="txt_P1" class="form-control"  required>
                <label for="lbl_P2">¿Su problema fue resuelto de manera profesional por nuestro departamento de servicio al cliente?</label>
                <input type="text" name="txt_P2" id="txt_P2" class="form-control"  required>
                <label for="lbl_P3">¿Nuestro representante de servicio al cliente le ofreció una solución / respuesta de manera oportuna?</label>
                <input type="text" name="txt_P3" id="txt_P3" class="form-control"  required>
                <label for="lbl_P4">¿Cuántas personas le ayudaron hoy?</label>
                <input type="text" name="txt_P4" id="txt_P4" class="form-control"  required>
                <label for="lbl_P5">¿Nuestro representante fue claro al momento de comunicarse con usted?</label>
                <input type="text" name="txt_P5" id="txt_P5" class="form-control"  required>
                <label for="lbl_P6">¿Considera que nuestro representante tenía el conocimiento suficiente para atender su consulta?</label>
                <input type="text" name="txt_P6" id="txt_P6" class="form-control"  required>
                <label for="lbl_P7">¿Considera que nuestro representante tenía conocimiento completo de los productos y de las políticas de la compañía?</label>
                <input type="text" name="txt_P7" id="txt_P7" class="form-control"  required>
                <label for="lbl_P8">¿Considera que nuestro representante fue cortés y profesional al momento de comunicarse con usted?</label>
                <input type="text" name="txt_P8" id="txt_P8" class="form-control"  required>
                <label for="lbl_P9">¿Nuestro representante le hizo sentir que es un cliente valioso para la organización?</label>
                <input type="text" name="txt_P9" id="txt_P9" class="form-control"  required>
                <label for="lbl_P10">¿Usarás nuestros servicios / productos para satisfacer tus necesidades en el futuro?</label>
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
      
       <div class="container">
            <div class="modal fade" id="modal_Encuesta2" role="dialog">
  <div class="modal-dialog ">
    <div class="modal-content">

      <!-- Modal content -->
      <div class="modal-content">
	<div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Encuesta 2</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form action="sr_encuesta2" method="post" class="form-group">
                <label for="lbl_id">ID</label>
                <input type="text" name="txt_id" id="txt_id" class="form-control" value="0" readonly>
                <label for="lbl_P1">¿Desde hace cuánto utiliza nuestros productos o servicios?</label>
                <select name="meses" id="meses" class="form-control">
                    <%
                        Pregunta1 pregunta1 = new Pregunta1();
                        HashMap<String,String> dropP1 = pregunta1.drop_pregunta1();
                        for (String i: dropP1.keySet()){
                        out.println("<option value='"+i+"'>"+ dropP1.get(i)+"</option>");
                        } 
                    %>
                </select>
                <label for="lbl_P2">¿Cuál es la frecuencia con que realiza compras en nuestro sitio web?</label>
                <select name="Frecuencia" id="Frecuencia" class="form-control">
                    <%
                        Pregunta2 pregunta2 = new Pregunta2();
                        HashMap<String,String> dropP2 = pregunta2.drop_pregunta2();
                        for (String i: dropP2.keySet()){
                        out.println("<option value='"+i+"'>"+ dropP2.get(i)+"</option>");
                        } 
                    %>
                </select>
                 <label for="lbl_P3">¿Considera que nuestro producto satisface sus necesidades</label>
                <select name="Satisfaccion" id="Satisfaccion" class="form-control">
                    <%
                        Pregunta3 pregunta3 = new Pregunta3();
                        HashMap<String,String> dropP3 = pregunta3.drop_pregunta3();
                        for (String i: dropP3.keySet()){
                        out.println("<option value='"+i+"'>"+ dropP3.get(i)+"</option>");
                        } 
                    %>
                </select>
                 
                 <label for="lbl_P4">¿Cuál es la probabilidad de que vuelva a comprar nuestros productos?</label>
                <select name="Probabilidad" id="Probabilidad" class="form-control">
                    <%
                        Pregunta4 pregunta4 = new Pregunta4();
                        HashMap<String,String> dropP4 = pregunta4.drop_pregunta4();
                        for (String i: dropP4.keySet()){
                        out.println("<option value='"+i+"'>"+ dropP4.get(i)+"</option>");
                        } 
                    %>
                </select>
                 <label for="lbl_P5">¿Cuál es la probabilidad de que nos recomiende con sus conocidos?</label>
                <select name="Probabilidad2" id="Probabilidad2" class="form-control">
                   <%
                        Pregunta5 pregunta5 = new Pregunta5();
                        HashMap<String,String> dropP5 = pregunta5.drop_pregunta5();
                        for (String i: dropP5.keySet()){
                        out.println("<option value='"+i+"'>"+ dropP5.get(i)+"</option>");
                        } 
                    %>
                </select> 
                <label for="lbl_nombre">Nombre</label>
                <input type="text" name="txt_nombre" id="txt_nombre" class="form-control"  required>
      </form>
                 <br>
                 <div class="container align-content-center">
                         <button  name="btn_agregar" id="btn_agregar" value="agregar"class="btn btn-success btn-lg">Agregar</button>
                        <button  name="btn_modificar" id="btn_modificar" value="modificar"class="btn btn-info btn-lg">Modificar</button>
                        <button  name="btn_eliminar" id="btn_eliminar" value="eliminar"class="btn btn-danger btn-lg"onclick="javascript:if(!confirm('Desea Eliminar Este Registro'))return false">Eliminar</button>
                       
                 </div>
                 
                        </div>
        </form>
      </div>
      

    </div>
  </div>
</div>
</div>
        </div>
       <div class="container">
            <div class="modal fade" id="modal_Encuesta3" role="dialog">
  <div class="modal-dialog ">
    <div class="modal-content">

      <!-- Modal content -->
      <div class="modal-content">
	<div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Encuesta 3</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form action="sr_encuesta2" method="post" class="form-group">
                <label for="lbl_id">ID</label>
                <input type="text" name="txt_id" id="txt_id" class="form-control" value="0" readonly>
                <label for="lbl_medicina">MEDICINA</label>
                <input type="text" name="txt_medicina" id="txt_medicina" class="form-control"  required>
                <label for="lbl_existencia">EXISTENCIA</label>
                <input type="text" name="text_existencia" id="text_existencia" class="form-control"  required>
                <label for="lbl_fi">FECHA INGRESO</label>
                <input type="date" name="txt_fi" id="txt_fi" class="form-control"  required>
                 <label for="lbl_fv">FECHA VENCIMIENTO</label>
                <input type="date" name="txt_fv" id="txt_fv" class="form-control"  required>
                <label for="lbl_imagen">IMAGEN</label>
                <input type="text" name="txt_imagen" id="txt_imagen" class="form-control"  required>
                
                 <br>
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
        
        

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>
