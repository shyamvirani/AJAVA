package com.vvp.java;
// Generated Apr 23, 2019 8:13:05 PM by Hibernate Tools 3.2.1.GA



/**
 * User generated by hbm2java
 */
public class User  implements java.io.Serializable {


     private Integer sid;
     private String name;
     private String branch;
     private int sem;
     private int enrollment;
     private int phone;

    public User() {
    }

    public User(String name, String branch, int sem, int enrollment, int phone) {
       this.name = name;
       this.branch = branch;
       this.sem = sem;
       this.enrollment = enrollment;
       this.phone = phone;
    }
   
    public Integer getSid() {
        return this.sid;
    }
    
    public void setSid(Integer sid) {
        this.sid = sid;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getBranch() {
        return this.branch;
    }
    
    public void setBranch(String branch) {
        this.branch = branch;
    }
    public int getSem() {
        return this.sem;
    }
    
    public void setSem(int sem) {
        this.sem = sem;
    }
    public int getEnrollment() {
        return this.enrollment;
    }
    
    public void setEnrollment(int enrollment) {
        this.enrollment = enrollment;
    }
    public int getPhone() {
        return this.phone;
    }
    
    public void setPhone(int phone) {
        this.phone = phone;
    }




}

