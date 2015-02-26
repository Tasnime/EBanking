/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import comptes.Compte;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;


/**
 *
 * @author Tasnime
 */
public class ComptesController implements Controller {
    
   /*public ComptesController() {
        //Initialize controller properties here or 
        //in the Web Application Context

        //setCommandClass(MyCommand.class);
        //setCommandName("MyCommandName");
       // setSuccessView("Interface_client");
       // setFormView("index");
    }*/
    
      @Override
      public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
   
        ModelAndView mv = new ModelAndView("Interface_client");
    //  ModelAndView mv = new ModelAndView(getSuccessView());
        java.lang.String name = "";
        comptes.ComptesWS_Service service = new comptes.ComptesWS_Service();
        comptes.ComptesWS port = service.getComptesWSPort();
        
       // java.util.List<java.lang.Object> resultNumComptes = port.numcomptes(name);
        
          List<Compte> resultNumComptes = port.comptes(name);
        mv.addObject("numeroCompte",resultNumComptes);
  
        return mv;
    }

    private static java.util.List<comptes.Compte> comptes(java.lang.String name) {
        comptes.ComptesWS_Service service = new comptes.ComptesWS_Service();
        comptes.ComptesWS port = service.getComptesWSPort();
        return port.comptes(name);
    }

   

 
}
