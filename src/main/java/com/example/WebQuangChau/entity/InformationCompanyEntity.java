package com.example.WebQuangChau.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "information_company")
public class InformationCompanyEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String taxCode;
    private String hotline;
    private String email;
    @OneToMany(mappedBy = "informationCompany",fetch = FetchType.LAZY)
    private List<BranchEntity> branch;
    private int numberOfVisit;

    public InformationCompanyEntity() {
    }

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

    public String getTaxCode() {
        return taxCode;
    }

    public void setTaxCode(String taxCode) {
        this.taxCode = taxCode;
    }

    public String getHotline() {
        return hotline;
    }

    public void setHotline(String hotline) {
        this.hotline = hotline;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<BranchEntity> getBranch() {
        return branch;
    }

    public void setBranch(List<BranchEntity> branch) {
        this.branch = branch;
    }

    public int getNumberOfVisit() {
        return numberOfVisit;
    }

    public void setNumberOfVisit(int numberOfVisit) {
        this.numberOfVisit = numberOfVisit;
    }
}
