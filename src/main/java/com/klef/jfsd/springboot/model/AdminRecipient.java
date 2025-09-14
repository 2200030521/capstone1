 package com.klef.jfsd.springboot.model;

import jakarta.persistence.*;

@Entity
@Table(name = "admin_recipient_table")
public class AdminRecipient {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "recipient_id")
    private int id;

    @Column(name = "recipient_name", nullable = false)
    private String name;

    @Column(name = "recipient_email", nullable = false, unique = true)
    private String email;

    @Column(name = "recipient_phone", nullable = false, unique = true)
    private String phone;

    @Column(name = "recipient_password", nullable = false)
    private String password;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
