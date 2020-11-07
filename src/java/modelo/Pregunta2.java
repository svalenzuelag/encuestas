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
public class Pregunta2 {
    private int id;
    private String pregunta2;
    Conexion cn;
    
     public Pregunta2(){}
    
    public Pregunta2(int id, String pregunta2) {
        this.id = id;
        this.pregunta2 = pregunta2;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPregunta2() {
        return pregunta2;
    }

    public void setPregunta2(String pregunta2) {
        this.pregunta2 = pregunta2;
    }
    
     public HashMap drop_pregunta2(){
     HashMap<String,String> drop = new HashMap();
     try {
         cn = new Conexion();
         String query = "SELECT id_p2 AS id, Pregunta2 FROM pregunta2;";
         cn.abrir_conexion();
         ResultSet consulta = cn.conexionBD.createStatement().executeQuery(query);
         while (consulta.next()){
             drop.put(consulta.getString("id"), consulta.getString("Pregunta2"));
         }
         cn.cerrar_conexion();
     }catch(SQLException ex){
         System.out.println(ex.getMessage());
     }
     return drop;
    }
    
}
