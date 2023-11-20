/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Nguyen Manh Tien
 */
public class category {
    private int cid;
    private String cname;
    private int cparentid;
    private Date created_at;
    private Date update_at;

    public category() {
    }

    public category(int cid, String cname, int cparentid, Date created_at, Date update_at) {
        this.cid = cid;
        this.cname = cname;
        this.cparentid = cparentid;
        this.created_at = created_at;
        this.update_at = update_at;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public int getCparentid() {
        return cparentid;
    }

    public void setCparentid(int cparentid) {
        this.cparentid = cparentid;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getUpdate_at() {
        return update_at;
    }

    public void setUpdate_at(Date update_at) {
        this.update_at = update_at;
    }
    
    
    
}
