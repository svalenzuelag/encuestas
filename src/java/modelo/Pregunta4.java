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
public class Pregunta4 {
    private int id;
    private String pregunta4;
    Conexion cn;
    public Pregunta4(){}

    public Pregunta4(int id, String pregunta4) {
        this.id = id;
        this.pregunta4 = pregunta4;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPregunta4() {
        return pregunta4;
    }

    public void setPregunta4(String pregunta4) {
        this.pregunta4 = pregunta4;
    }
    
     public HashMap drop_pregunta4(){
     HashMap<String,String> drop = new HashMap();
     try {
         cn = new Conexion();
         String query = "SELECT id_p4 AS id, Pregunta4 FROM pregunta4;";
         cn.abrir_conexion();
         ResultSet consulta = cn.conexionBD.createStatement().executeQuery(query);
         while (consulta.next()){
             drop.put(consulta.getString("id"), consulta.getString("Pregunta4"));
         }
         cn.cerrar_conexion();
     }catch(SQLException ex){
         System.out.println(ex.getMessage());
     }
     return drop;
    }
}
