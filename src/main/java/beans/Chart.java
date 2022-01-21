package beans;

public class Chart {

    private String name;
    private int nb;

    public Chart(String name,int nb){
        this.name=name;
        this.nb=nb;
    }
    public int getNb() {
        return nb;
    }
    public void setId(int nb) {
        this.nb = nb;
    }

    public String getNom() {
        return name;
    }
    public void setNom(String name) {
        this.name = name;
    }

}
