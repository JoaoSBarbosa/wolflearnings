package com.devsuperior.wolflearnings.dto;

import com.devsuperior.wolflearnings.entities.Role;

import java.io.Serializable;

public class RoleDTO implements Serializable {

    private long ig;
    private String authority;

    public RoleDTO(){}

    public RoleDTO(long ig, String authority) {
        this.ig = ig;
        this.authority = authority;
    }

    public RoleDTO(Role entity) {
        ig = entity.getIg();
        authority = entity.getAuthority();
    }

    public long getIg() {
        return ig;
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
