/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projetsession_a10team1;

import dao.ConsultationDAO;

/**
 *
 * @author 1895066
 */
public class ProjetSession_A10TEAM1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ConsultationDAO cons= new ConsultationDAO();
        
        cons.nbConsulationParMois();
    }
    
}
