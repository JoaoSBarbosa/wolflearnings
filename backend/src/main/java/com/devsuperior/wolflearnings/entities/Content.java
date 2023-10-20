package com.devsuperior.wolflearnings.entities;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tb_content")
public class Content extends Lesson{
    private String textConten;
    private String videoUril;

    public Content(){}

    public Content(Long id, String title, Integer position, Section section, String textConten, String videoUril) {
        super(id, title, position, section);
        this.textConten = textConten;
        this.videoUril = videoUril;
    }

    public String getTextConten() {
        return textConten;
    }

    public void setTextConten(String textConten) {
        this.textConten = textConten;
    }

    public String getVideoUril() {
        return videoUril;
    }

    public void setVideoUril(String videoUril) {
        this.videoUril = videoUril;
    }
}
