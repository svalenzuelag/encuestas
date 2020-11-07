/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author josue
 */
public class Encuesta2 {
    
    private String nombre;
    private int id, id_p1,id_p2,id_p3,id_p4,id_p5;
    Conexion cn;
     public Encuesta2(){}

    public Encuesta2(int id, int id_p1, int id_p2, int id_p3, int id_p4, int id_p5, String nombre) {
        this.id = id;
        this.id_p1 = id_p1;
        this.id_p2 = id_p2;
        this.id_p3 = id_p3;
        this.id_p4 = id_p4;
        this.id_p5 = id_p5;
        this.nombre = nombre;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_p1() {
        return id_p1;
    }

    public void setId_p1(int id_p1) {
        this.id_p1 = id_p1;
    }

    public int getId_p2() {
        return id_p2;
    }

    public void setId_p2(int id_p2) {
        this.id_p2 = id_p2;
    }

    public int getId_p3() {
        return id_p3;
    }

    public void setId_p3(int id_p3) {
        this.id_p3 = id_p3;
    }

    public int getId_p4() {
        return id_p4;
    }

    public void setId_p4(int id_p4) {
        this.id_p4 = id_p4;
    }

    public int getId_p5() {
        return id_p5;
    }

    public void setId_p5(int id_p5) {
        this.id_p5 = id_p5;
    }
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public DefaultTableModel leerEncuesta2 (){
    
    DefaultTableModel tabla = new  DefaultTableModel();
      try{
          cn = new Conexion();
          cn.abrir_conexion();
          String query="select E.id_encuesta,P1.Pregunta1, P2.Pregunta2,P3.Pregunta3, P4.Pregunta4, P5.Pregunta5, E.nombre from encuesta2 E inner join pregunta1 P1 ON E.id_p1 = P1.id_p1 inner join pregunta2 P2 ON E.id_p2= P2.id_p2 inner join pregunta3 P3 ON E.id_p3=P3.id_p3 inner join pregunta4 P4 ON E.id_p4=P4.id_p4 inner join pregunta5 P5 ON E.id_p5=P5.id_p5;";
          ResultSet consulta = cn.conexionBD.createStatement().executeQuery(query);
          String encabezado [] = {"id","Pregunta1","Pregunta2","Pregunta3","Pregunta4","Pregunta5","Nombre"};
          tabla.setColumnIdentifiers(encabezado);
          String datos [] = new String [7];
          while (consulta.next()){
          datos[0] = consulta.getString("id_encuesta");
          datos[1] = consulta.getString("Pregunta1");
          datos[2] = consulta.getString("Pregunta2");
          datos[3] = consulta.getString("Pregunta3");
          datos[4] = consulta.getString("Pregunta4");
          datos[5] = consulta.getString("Pregunta5");
          datos[6] = consulta.getString("nombre");
          tabla.addRow(datos);
          }
          cn.cerrar_conexion();
      }catch(SQLException ex){
          System.out.println(ex.getMessage());
      }
      
      return tabla;
  }
    
    public int agregar(){
    
         int retorno =0;
        try{
            PreparedStatement parametro;
            cn = new Conexion();
            String query = "insert into encuesta2(id_p1,id_p2,id_p3,id_p4,id_p5)VALUES(?,?,?,?,?);";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexionBD.prepareStatement(query);
            parametro.setInt(1, getId_p1());
            parametro.setInt(2, getId_p2());
            parametro.setInt(3, getId_p3());
            parametro.setInt(4, getId_p4());
            parametro.setInt(5, getId_p4());
            parametro.setString(6, getNombre());
            retorno = parametro.executeUpdate();
            cn.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
    return retorno;
    }
          
    public int modificar(){
    
          int retorno = 0;
        
        return retorno;
    }
    
    public int eliminar(){
    
          int retorno = 0;
        
        return retorno;
    }
    
}
