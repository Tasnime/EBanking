/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import java.util.Date;
import java.util.List;
import model.Demandecarte;
import model.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;


/**
 *
 * @author Tasnime
 */
public class CartesController extends SimpleFormController {
    
    public CartesController() {
       //Initialize controller properties here or 
        //in the Web Application Context

        setCommandClass(Demandecarte.class);
        setCommandName("test");
        setSuccessView("Cartes");
        setFormView("Cartes");
    }
    
    @Override
    protected ModelAndView onSubmit(Object command) throws Exception {
        
            ModelAndView mv = new ModelAndView("Cartes");
     //   ModelAndView mv = new ModelAndView("Interface_demandeCarte");
      Demandecarte carte = (Demandecarte) command;
 
      
      // Test tes = new Test();
        try{
            //tes.setId(10);
          
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
             Date actuelle = new Date();
            
             carte.setDateDemandeCarte(actuelle);
            session.save(carte);
            session.getTransaction().commit();
           
           
            
            String hql="from Demandecarte";
            Query query = session.createQuery(hql);
            List<Demandecarte> lst= query.list();
            mv.addObject("demandes", lst);
            
            session.close();
          
        }
        catch( Exception e ){
            
        
        }
        //return new ModelAndView( new RedirectView ("Cartes.htm"));
        return mv;
                }
}