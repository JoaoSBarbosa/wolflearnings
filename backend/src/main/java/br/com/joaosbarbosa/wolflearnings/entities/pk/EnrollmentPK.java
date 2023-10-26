package br.com.joaosbarbosa.wolflearnings.entities.pk;

import br.com.joaosbarbosa.wolflearnings.entities.User;
import br.com.joaosbarbosa.wolflearnings.entities.Offer;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class EnrollmentPK implements Serializable {

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

   @ManyToOne
   @JoinColumn(name = "offer_id")
    private Offer offer;

    public EnrollmentPK(){}

    public EnrollmentPK(User user, Offer offer) {
        this.user = user;
        this.offer = offer;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Offer getOffer() {
        return offer;
    }

    public void setOffer(Offer offer) {
        this.offer = offer;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof EnrollmentPK)) return false;
        EnrollmentPK that = (EnrollmentPK) o;
        return Objects.equals(getUser(), that.getUser()) && Objects.equals(getOffer(), that.getOffer());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getUser(), getOffer());
    }
}
