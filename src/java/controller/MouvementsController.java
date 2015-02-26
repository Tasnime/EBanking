/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import comptes.Compte;
import static java.lang.Compiler.command;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mouvements.Mouvement;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import org.springframework.web.servlet.mvc.SimpleFormController;
import testmouvements.ParseException_Exception;

/**
 *
 * @author Tasnime
 */
public class MouvementsController extends SimpleFormController {
    
     public MouvementsController() {
        //Initialize controller properties here or
        //in the Web Application Context

        setCommandClass(Extrait.class);
        setCommandName("extrait");
        //setSuccessView("carteView");
        setFormView("Interface_demandeExtrait");
    }

 
      @Override
      public ModelAndView onSubmit(Object command) throws Exception {
          //HttpSession session = request.getSession() ;
            //session.setAttribute("dateD.session", dateD) ;

   
        ModelAndView mv = new ModelAndView("Interface_mouvements");
        Extrait extrait = (Extrait) command;
    //  ModelAndView mv = new ModelAndView(getSuccessView());
        String d1=extrait.getDateDebut();
        String d2=extrait.getDateFin();
        // mv.addObject("numeroCompte", carteService.numCompte(name.getValue()));
     /*   java.lang.String name = "";
        mouvements.MouvementsWS_Service service = new mouvements.MouvementsWS_Service();
        mouvements.MouvementsWS port = service.getMouvementsWSPort();
        
       // java.util.List<java.lang.Object> resultNumComptes = port.numcomptes(name);
        
          List<Mouvement> resultMouvements = port.mouvements(name);*/
           testmouvements.TestMouvementsWS_Service service = new testmouvements.TestMouvementsWS_Service();
           testmouvements.TestMouvementsWS port = service.getTestMouvementsWSPort();
           List<testmouvements.Mouvement> resultMouvements= port.mouvements(d1, d2);
        
       /*    for(int i=0; i<resultMouvements.size(); i++) {
            resultMouvements.get(i).setDateVal("02-02-2015"); 
      
           }*/
        mv.addObject("mouvements",resultMouvements);
  
        return mv;
    }

    private static java.util.List<testmouvements.Mouvement> mouvements(java.lang.String d1, java.lang.String d2) throws ParseException_Exception {
        testmouvements.TestMouvementsWS_Service service = new testmouvements.TestMouvementsWS_Service();
        testmouvements.TestMouvementsWS port = service.getTestMouvementsWSPort();
        return port.mouvements(d1, d2);
    }
      
   
      
   
}
