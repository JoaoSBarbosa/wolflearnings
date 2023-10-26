package br.com.joaosbarbosa.wolflearnings.services.exceptions;

public class UnauthorizedException extends RuntimeException{ //utilizada para retornar erro 401- token inválido

    public UnauthorizedException(String msg){
        super(msg);
    }
}
