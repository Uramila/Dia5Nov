/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfazbase.clases;

import interfazbase.Ingresar;
import java.awt.event.ActionEvent;
import javax.swing.JFrame;

/**
 *
 * @author Alexander
 */
public class validacionUsuario {
   
   public void validarTipo(String tipo, JFrame adm, JFrame emp){
       
       if("Administrador".equals(tipo)){
           adm.setVisible(true);  
       }
       
       if("Empleado".equals(tipo)){
           emp.setVisible(true);
           
       }
  
   } 
  
    Ingresar ingresar  = new Ingresar();
    
 }
