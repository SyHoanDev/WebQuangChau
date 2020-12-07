package com.example.WebQuangChau.entity;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "Users")
public class UsersEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String userName;
    private String password;
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinTable(name = "Users_Role",
            joinColumns = @JoinColumn(name = "usersID",
                    referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(
                    name = "roleID",
                    referencedColumnName = "id"))
    private Set<RoleEntity> role;
    @Column(name = "enabled", nullable = false, columnDefinition
            = "bit(1) default 1")
    private boolean enabled;
    @OneToOne(mappedBy = "users",fetch = FetchType.LAZY)
    private StaffEntity staff;

    public UsersEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Set<RoleEntity> getRole() {
        return role;
    }

    public void setRole(Set<RoleEntity> role) {
        this.role = role;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public StaffEntity getStaff() {
        return staff;
    }

    public void setStaff(StaffEntity staff) {
        this.staff = staff;
    }
}
