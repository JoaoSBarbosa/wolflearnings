package br.com.joaosbarbosa.wolflearnings.dto;

import br.com.joaosbarbosa.wolflearnings.entities.enums.DeliverStatus;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;

public class DeliverRevisionDTO implements Serializable {

    @NotBlank(message = "Defina um status")
    private DeliverStatus status;
    private String feedback;
    @NotBlank(message = "Atribua uma nota")
    private Integer correctCount;

    public DeliverRevisionDTO(){}

    public DeliverRevisionDTO(DeliverStatus status, String feedback, Integer correctCount) {
        this.status = status;
        this.feedback = feedback;
        this.correctCount = correctCount;
    }

    public DeliverStatus getStatus() {
        return status;
    }

    public void setStatus(DeliverStatus status) {
        this.status = status;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public Integer getCorrectCount() {
        return correctCount;
    }

    public void setCorrectCount(Integer correctCount) {
        this.correctCount = correctCount;
    }
}
