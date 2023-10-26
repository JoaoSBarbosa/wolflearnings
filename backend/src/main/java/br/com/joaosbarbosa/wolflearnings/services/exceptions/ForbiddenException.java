package br.com.joaosbarbosa.wolflearnings.services.exceptions;

public class ForbiddenException extends RuntimeException{ //utilizada para retornar erro 403- user sem autorização

    public ForbiddenException(String msg){
        super(msg);
    }
}
