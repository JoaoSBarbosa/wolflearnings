package com.devsuperior.wolflearnings.entities;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name = "tb_role")
public class Role implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long ig;
    private String authority;

    public Role(){}

    public Role(long ig, String authority) {
        this.ig = ig;
        this.authority = authority;
    }

    public long getIg() {
        return ig;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Role)) return false;
        Role role = (Role) o;
        return getIg() == role.getIg();
    }

    @Override
    public int hashCode() {
        return Objects.hash(getIg());
    }

    public void setIg(long ig) {
        this.ig = ig;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }
}
