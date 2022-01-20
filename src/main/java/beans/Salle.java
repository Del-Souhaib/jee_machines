package beans;

import java.util.Date;

public class Salle {

    private int id;
    private String code;
    private String type;
    private Date created_at;

    public Salle(int id, String code, String type,Date created_at) {
        super();
        this.id = id;
        this.code = code;
        this.type = type;
        this.created_at=created_at;
    }
    public Salle(int id, String code, String type) {
        super();
        this.id = id;
        this.code = code;
        this.type = type;
    }
    public Salle( String code, String type) {
        super();
        this.code = code;
        this.type = type;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }


    @Override
    public String toString() {
        return this.id + " " + this.code;
    }

}
