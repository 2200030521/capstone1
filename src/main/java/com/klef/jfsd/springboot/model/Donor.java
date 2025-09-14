package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="donor_table")
public class Donor 
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="donor_id")
    private int id;
    
    @Column(name="donor_name", nullable=false)
    private String name;
    
    @Column(name="donor_email", nullable=false, unique=true)
    private String email;
    
    @Column(name="donor_password", nullable=false)
    private String password;
    
    
    @Column(name="donor_contact", nullable=false, unique=true)
    private String contact;
    
    @Column(name="donor_location", nullable=false)
    private String location;

    @Column(name="donor_code", nullable=false)
    private String verificationCode;
    
    private boolean verified; 
    
    public boolean isVerified() {
        return verified;
    }

    public void setVerified(boolean verified) {
        this.verified = verified;
    }
    
    public String getVerificationCode() {
		return verificationCode;
	}
	public void setVerificationCode(String verificationCode) {
		this.verificationCode = verificationCode;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	// Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
    public String getContact() { return contact; }
    public void setContact(String contact) { this.contact = contact; }
}
