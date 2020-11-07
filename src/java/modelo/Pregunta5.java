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
public class Pregunta5 {
    
    private int id;
    private String pregunta5;
    Conexion cn;
    public Pregunta5(){}

    public Pregunta5(int id, String pregunta5) {
        this.id = id;
        this.pregunta5 = pregunta5;
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPregunta5() {
        return pregunta5;
    }

    public void setPregunta5(String pregunta5) {
        this.pregunta5 = pregunta5;
    }
    
    public HashMap drop_pregunta5(){
     HashMap<String,String> drop = new HashMap();
     try {
         cn = new Conexion();
         String query = "SELECT id_p5 AS id, Pregunta5 FROM pregunta5;";
         cn.abrir_conexion();
         ResultSet consulta = cn.conexionBD.createStatement().executeQuery(query);
         while (consulta.next()){
             drop.put(consulta.getString("id"), consulta.getString("Pregunta5"));
         }
         cn.cerrar_conexion();
     }catch(SQLException ex){
         System.out.println(ex.getMessage());
     }
     return drop;
    }
}
