package br.com.joaosbarbosa.wolflearnings.controller.exception;

import java.util.ArrayList;
import java.util.List;

public class ValidationError extends StandardError{

    private List<FieldMessage> fieldMessages = new ArrayList<>();

    public List<FieldMessage> getFieldMessageList() {
        return fieldMessages;
    }

    public void addError(String fieldName, String message){
        fieldMessages.add(new FieldMessage(fieldName, message));
    }

}
