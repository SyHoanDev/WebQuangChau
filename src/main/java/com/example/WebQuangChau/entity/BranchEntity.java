package com.example.WebQuangChau.entity;

import javax.persistence.*;

@Entity
@Table(name = "branch")
public class BranchEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String address;
    private String phoneNumber;
    private String supporter;
    @ManyToOne
    @JoinColumn(name = "informationID")
    private InformationCompanyEntity informationCompany;

    public BranchEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getSupported() {
        return supporter;
    }

    public void setSupported(String supported) {
        this.supporter = supported;
    }

    public InformationCompanyEntity getInformationCompany() {
        return informationCompany;
    }

    public void setInformationCompany(InformationCompanyEntity informationCompany) {
        this.informationCompany = informationCompany;
    }
}
