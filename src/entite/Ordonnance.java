package entite;
// Generated 2018-09-28 16:50:26 by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Ordonnance generated by hbm2java
 */
public class Ordonnance  implements java.io.Serializable {


     private String numord;
     private String recommandations;
     private String typeo;
     private Date datec;
     private Set consultations = new HashSet(0);
     private Set ordonnancechirurgies = new HashSet(0);
     private Set ordonnancemedicamentses = new HashSet(0);

    public Ordonnance() {
    }

	
    public Ordonnance(String numord) {
        this.numord = numord;
    }
    public Ordonnance(String numord, String recommandations, String typeo, Date datec, Set consultations, Set ordonnancechirurgies, Set ordonnancemedicamentses) {
       this.numord = numord;
       this.recommandations = recommandations;
       this.typeo = typeo;
       this.datec = datec;
       this.consultations = consultations;
       this.ordonnancechirurgies = ordonnancechirurgies;
       this.ordonnancemedicamentses = ordonnancemedicamentses;
    }
   
    public String getNumord() {
        return this.numord;
    }
    
    public void setNumord(String numord) {
        this.numord = numord;
    }
    public String getRecommandations() {
        return this.recommandations;
    }
    
    public void setRecommandations(String recommandations) {
        this.recommandations = recommandations;
    }
    public String getTypeo() {
        return this.typeo;
    }
    
    public void setTypeo(String typeo) {
        this.typeo = typeo;
    }
    public Date getDatec() {
        return this.datec;
    }
    
    public void setDatec(Date datec) {
        this.datec = datec;
    }
    public Set getConsultations() {
        return this.consultations;
    }
    
    public void setConsultations(Set consultations) {
        this.consultations = consultations;
    }
    public Set getOrdonnancechirurgies() {
        return this.ordonnancechirurgies;
    }
    
    public void setOrdonnancechirurgies(Set ordonnancechirurgies) {
        this.ordonnancechirurgies = ordonnancechirurgies;
    }
    public Set getOrdonnancemedicamentses() {
        return this.ordonnancemedicamentses;
    }
    
    public void setOrdonnancemedicamentses(Set ordonnancemedicamentses) {
        this.ordonnancemedicamentses = ordonnancemedicamentses;
    }




}


