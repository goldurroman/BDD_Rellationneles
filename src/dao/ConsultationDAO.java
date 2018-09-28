/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entite.Consultation;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author 1895066
 */
public class ConsultationDAO {
    
    public static void nbConsulationParMois()
    {
    Session session = HibernateUtil.getSessionFactory().openSession();
    Criteria cr = session.createCriteria(Consultation.class);
    
    cr.setProjection(Projections.count("id"));
    
    long varCount= (long) cr.uniqueResult();
    
    System.out.println("Le count :" + varCount);
//    cr.createAlias("consultationId", "consult");
//    
//    ProjectionList list = Projections.projectionList();
//    list.add(Projections.groupProperty("consult.datec"));
//    list.add(Projections.rowCount());
//    
//    cr.setProjection(list);
    
//    List<Object[]> results = cr.list();
//        for (Object[] line : results) {
//
//            System.out.println("Date : " + line[0]);
//            System.out.println("count : " + line[1]);
//            
//            System.out.println("**************************************");
//        }
    
    }
    
//    public static void categorieLivreParPaysEditeur() {
//        Session session = HibernateUtil.getSessionFactory().openSession();
//        Criteria cr = session.createCriteria(LivreGr.class);
//        cr.createAlias("editeurGr", "edit");
//        ProjectionList list = Projections.projectionList();
//
//        list.add(Projections.groupProperty("edit.paysEditeur"));
//        list.add(Projections.groupProperty("categorieLivre"));
//        list.add(Projections.rowCount());
//        list.add(Projections.groupProperty("nbrpages"));
//        list.add(Projections.avg("nbrpages"));
//
//        cr.setProjection(list);
//
//        List<Object[]> results = cr.list();
//        for (Object[] line : results) {
//
//            System.out.println("Pays editeur : " + line[0]);
//            System.out.println("Categorie livre : " + line[1]);
//            System.out.println("Count : " + line[2]);
//            System.out.println("NbrPages : " + line[3]);
//            System.out.println("line[4] : " + line[4]);
//            
//            System.out.println("**************************************");
//        }
//
//    }
    
}
