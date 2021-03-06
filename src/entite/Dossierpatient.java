package entite;
// Generated 2018-09-28 16:50:26 by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Dossierpatient generated by hbm2java
 */
public class Dossierpatient  implements java.io.Serializable {


     private String numdos;
     private Docteur docteur;
     private String nomp;
     private String prenomp;
     private Character genre;
     private String numas;
     private Date datenaiss;
     private Date datec;
     private Set consultations = new HashSet(0);

    public Dossierpatient() {
    }

	
    public Dossierpatient(String numdos, String nomp, String prenomp) {
        this.numdos = numdos;
        this.nomp = nomp;
        this.prenomp = prenomp;
    }
    public Dossierpatient(String numdos, Docteur docteur, String nomp, String prenomp, Character genre, String numas, Date datenaiss, Date datec, Set consultations) {
       this.numdos = numdos;
       this.docteur = docteur;
       this.nomp = nomp;
       this.prenomp = prenomp;
       this.genre = genre;
       this.numas = numas;
       this.datenaiss = datenaiss;
       this.datec = datec;
       this.consultations = consultations;
    }
   
    public String getNumdos() {
        return this.numdos;
    }
    
    public void setNumdos(String numdos) {
        this.numdos = numdos;
    }
    public Docteur getDocteur() {
        return this.docteur;
    }
    
    public void setDocteur(Docteur docteur) {
        this.docteur = docteur;
    }
    public String getNomp() {
        return this.nomp;
    }
    
    public void setNomp(String nomp) {
        this.nomp = nomp;
    }
    public String getPrenomp() {
        return this.prenomp;
    }
    
    public void setPrenomp(String prenomp) {
        this.prenomp = prenomp;
    }
    public Character getGenre() {
        return this.genre;
    }
    
    public void setGenre(Character genre) {
        this.genre = genre;
    }
    public String getNumas() {
        return this.numas;
    }
    
    public void setNumas(String numas) {
        this.numas = numas;
    }
    public Date getDatenaiss() {
        return this.datenaiss;
    }
    
    public void setDatenaiss(Date datenaiss) {
        this.datenaiss = datenaiss;
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




}


