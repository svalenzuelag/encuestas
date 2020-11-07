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
public class Pregunta1 {
    
    private int id;
    private String pregunta1;
    Conexion cn;
     public Pregunta1(){}

    public Pregunta1(int id, String pregunta1) {
        this.id = id;
        this.pregunta1 = pregunta1;
    }

    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPregunta1() {
        return pregunta1;
    }

    public void setPregunta1(String pregunta1) {
        this.pregunta1 = pregunta1;
    }
    
    public HashMap drop_pregunta1(){
     HashMap<String,String> drop = new HashMap();
     try {
         cn = new Conexion();
         String query = "SELECT id_p1 AS id, Pregunta1 FROM pregunta1;";
         cn.abrir_conexion();
         ResultSet consulta = cn.conexionBD.createStatement().executeQuery(query);
         while (consulta.next()){
             drop.put(consulta.getString("id"), consulta.getString("Pregunta1"));
         }
         cn.cerrar_conexion();
     }catch(SQLException ex){
         System.out.println(ex.getMessage());
     }
     return drop;
    }
    
}
