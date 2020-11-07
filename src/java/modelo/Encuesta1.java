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
public class Encuesta1 {
    
    private int id;
    private String pregunta1;
    private String pregunta2;
    private String pregunta3;
    private String pregunta4;
    private String pregunta5;
    private String pregunta6;
    private String pregunta7;
    private String pregunta8;
    private String pregunta9;
    private String pregunta10;
    Conexion cn;
    public Encuesta1(){}
    public Encuesta1(int id, String pregunta1, String pregunta2, String pregunta3, String pregunta4, String pregunta5, String pregunta6, String pregunta7, String pregunta8, String pregunta9, String pregunta10) {
        this.id = id;
        this.pregunta1 = pregunta1;
        this.pregunta2 = pregunta2;
        this.pregunta3 = pregunta3;
        this.pregunta4 = pregunta4;
        this.pregunta5 = pregunta5;
        this.pregunta6 = pregunta6;
        this.pregunta7 = pregunta7;
        this.pregunta8 = pregunta8;
        this.pregunta9 = pregunta9;
        this.pregunta10 = pregunta10;
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

    public String getPregunta2() {
        return pregunta2;
    }

    public void setPregunta2(String pregunta2) {
        this.pregunta2 = pregunta2;
    }

    public String getPregunta3() {
        return pregunta3;
    }

    public void setPregunta3(String pregunta3) {
        this.pregunta3 = pregunta3;
    }

    public String getPregunta4() {
        return pregunta4;
    }

    public void setPregunta4(String pregunta4) {
        this.pregunta4 = pregunta4;
    }

    public String getPregunta5() {
        return pregunta5;
    }

    public void setPregunta5(String pregunta5) {
        this.pregunta5 = pregunta5;
    }

    public String getPregunta6() {
        return pregunta6;
    }

    public void setPregunta6(String pregunta6) {
        this.pregunta6 = pregunta6;
    }

    public String getPregunta7() {
        return pregunta7;
    }

    public void setPregunta7(String pregunta7) {
        this.pregunta7 = pregunta7;
    }

    public String getPregunta8() {
        return pregunta8;
    }

    public void setPregunta8(String pregunta8) {
        this.pregunta8 = pregunta8;
    }

    public String getPregunta9() {
        return pregunta9;
    }

    public void setPregunta9(String pregunta9) {
        this.pregunta9 = pregunta9;
    }

    public String getPregunta10() {
        return pregunta10;
    }

    public void setPregunta10(String pregunta10) {
        this.pregunta10 = pregunta10;
    }
    
      public DefaultTableModel leerEncuesta1(){
    DefaultTableModel tabla = new  DefaultTableModel();
      try{
          cn = new Conexion();
          cn.abrir_conexion();
          String query="select id_encuesta1 as id,pregunta1,pregunta2,pregunta3,pregunta4,pregunta5,pregunta6,pregunta7,pregunta8,pregunta9,pregunta10 from encuesta1;";
          ResultSet consulta = cn.conexionBD.createStatement().executeQuery(query);
          String encabezado [] = {"id","Pregunta1","Pregunta2","Pregunta3","Pregunta4","Pregunta5","Pregunta6","Pregunta7","Pregunta8","Pregunta9","Pregunta10"};
          tabla.setColumnIdentifiers(encabezado);
          String datos [] = new String [11];
          while (consulta.next()){
          datos[0] = consulta.getString("id");
          datos[1] = consulta.getString("pregunta1");
          datos[2] = consulta.getString("pregunta2");
          datos[3] = consulta.getString("pregunta3");
          datos[4] = consulta.getString("pregunta4");
          datos[5] = consulta.getString("pregunta5");
          datos[6] = consulta.getString("pregunta6");
          datos[7] = consulta.getString("pregunta7");
          datos[8] = consulta.getString("pregunta8");
          datos[9] = consulta.getString("pregunta9");
          datos[10] = consulta.getString("pregunta10");
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
            String query = "insert into encuesta1(Pregunta1,Pregunta2,Pregunta3,Pregunta4,Pregunta5,Pregunta6,Pregunta7,Pregunta8,Pregunta9,Pregunta10)VALUES(?,?,?,?,?,?,?,?,?,?);";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexionBD.prepareStatement(query);
            parametro.setString(1, getPregunta1());
            parametro.setString(2, getPregunta2());
            parametro.setString(3, getPregunta3());
            parametro.setString(4, getPregunta4());
            parametro.setString(5, getPregunta5());
            parametro.setString(6, getPregunta6());
            parametro.setString(7, getPregunta7());
            parametro.setString(8, getPregunta8());
            parametro.setString(9, getPregunta9());
            parametro.setString(10, getPregunta10());
            
           
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
