package br.com.joaosbarbosa.wolflearnings.controller.exception;
import br.com.joaosbarbosa.wolflearnings.services.exceptions.DataBaseException;
import br.com.joaosbarbosa.wolflearnings.services.exceptions.ForbiddenException;
import br.com.joaosbarbosa.wolflearnings.services.exceptions.ResourceNotFoundException;
import br.com.joaosbarbosa.wolflearnings.services.exceptions.UnauthorizedException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.servlet.http.HttpServletRequest;
import java.time.Instant;

@ControllerAdvice
public class ResourceExceptionsHandler {

    @ExceptionHandler(ResourceNotFoundException.class)
    public ResponseEntity<StandardError> entityNotFound(ResourceNotFoundException e, HttpServletRequest request) {
        HttpStatus status = HttpStatus.NOT_FOUND;

        StandardError err = new StandardError();
        err.setTimestamp(Instant.now());
        err.setStatus(status.value());
        err.setErro("Resource not found");
        err.setMessage(e.getMessage());
        err.setPath(request.getRequestURI());
        return ResponseEntity.status(status).body(err);
    }

    @ExceptionHandler(DataBaseException.class)
    public ResponseEntity<StandardError> dataBase(DataBaseException e, HttpServletRequest request) {
        HttpStatus status = HttpStatus.BAD_REQUEST;
        StandardError err = new StandardError();
        err.setTimestamp(Instant.now());
        err.setStatus(status.value());
        err.setErro("Violação de integridade");
        err.setMessage(e.getMessage());
        err.setPath(request.getRequestURI());
        return ResponseEntity.status(status).body(err);
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<ValidationError> validation(MethodArgumentNotValidException e, HttpServletRequest request) {
        HttpStatus status = HttpStatus.UNPROCESSABLE_ENTITY;
        ValidationError err = new ValidationError();

        err.setTimestamp(Instant.now());
        err.setStatus(status.value());
        err.setErro("Validation exception");
        err.setMessage(e.getMessage());
        err.setPath(request.getRequestURI());

        // para cada FilderErro, que chamaremos de 'f', que for encontrada em: e.getBindingResult().getFieldErrors()...
        for (FieldError f : e.getBindingResult().getFieldErrors()) {
            //Adicionando na lista de erros o campo e mensagem de erro retirado em e
            err.addError(f.getField(), f.getDefaultMessage());
        }
        return ResponseEntity.status(status).body(err);
    }


    @ExceptionHandler(ForbiddenException.class)
    public ResponseEntity<OAuthCustomError> forbidden(ForbiddenException e, HttpServletRequest request){
        OAuthCustomError oAuthCustomError = new OAuthCustomError("Proibido!", e.getMessage());
        return ResponseEntity.status(HttpStatus.FORBIDDEN).body(oAuthCustomError);
    }

    @ExceptionHandler(UnauthorizedException.class)
    public ResponseEntity<OAuthCustomError> unauthorized(UnauthorizedException e, HttpServletRequest request){
        OAuthCustomError unauthorizedError = new OAuthCustomError("Não autorizado!", e.getMessage());
        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(unauthorizedError);
    }
}
