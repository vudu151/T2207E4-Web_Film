package org.example.film.models.entities;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name = "episodes")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Episode {
    @Id
    @GenericGenerator(name="random_id", strategy = "org.example.film.commons.custom.RandomIdGenerator")
    @GeneratedValue(generator = "random_id")    //Dung name="random_id" ben tren de tao
    @Column(name = "id")
    private String id;

    @Column(name = "name")
    private int name;

    @Column(name = "link")
    private String link;

    @Column(name = "description")
    private String description;

    @Column(name = "duration")
    private Date duration;

    @Column(name = "filesize")
    private int fileSize;

    @Column(name = "license_price")
    private BigDecimal licensePrice;

    @Column(name = "license_start")
    private Date licenseStart;

    @Column(name = "license_end")
    private Date licenseEnd;

    @Column(name = "tax")
    private BigDecimal tax;

    @Column(name = "status")
    private int status;

    @ManyToOne
    @JoinColumn(name = "movie_id")
    private Movies movieId;
}
