/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

/**
 *
 * @author josue
 */
public class Pregunta3 {
    
    private int id;
    private String pregunta3;
    Conexion cn;
    
      public Pregunta3(){}
    public Pregunta3(int id, String pregunta3) {
        this.id = id;
        this.pregunta3 = pregunta3;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPregunta3() {
        return pregunta3;
    }

    public void setPregunta3(String pregunta3) {
        this.pregunta3 = pregunta3;
    }
    
      public HashMap drop_pregunta3(){
     HashMap<String,String> drop = new HashMap();
     try {
         cn = new Conexion();
         String query = "SELECT id_p3 AS id, Pregunta3 FROM pregunta3;";
         cn.abrir_conexion();
         ResultSet consulta = cn.conexionBD.createStatement().executeQuery(query);
         while (consulta.next()){
             drop.put(consulta.getString("id"), consulta.getString("Pregunta3"));
         }
         cn.cerrar_conexion();
     }catch(SQLException ex){
         System.out.println(ex.getMessage());
     }
     return drop;
    }
    
}
