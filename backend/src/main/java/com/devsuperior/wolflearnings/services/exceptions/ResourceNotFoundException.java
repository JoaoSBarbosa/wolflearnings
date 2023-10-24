package com.devsuperior.wolflearnings.services.exceptions;

public class ResourceNotFoundException extends RuntimeException {
    public ResourceNotFoundException(String Message) {
        super(Message);
    }
}
