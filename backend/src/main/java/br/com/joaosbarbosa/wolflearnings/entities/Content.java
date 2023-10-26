package br.com.joaosbarbosa.wolflearnings.entities;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tb_content")
public class Content extends Lesson{
    private String textContent;
    private String videoUri;

    public Content(){}

    public Content(Long id, String title, Integer position, Section section, String textContent, String videoUri) {
        super(id, title, position, section);
        this.textContent = textContent;
        this.videoUri = videoUri;
    }

    public String getTextConten() {
        return textContent;
    }

    public void setTextConten(String textContent) {
        this.textContent = textContent;
    }

    public String getVideoUri() {
        return videoUri;
    }

    public void setVideoUril(String videoUri) {
        this.videoUri = videoUri;
    }
}
