package org.example.film.models.entities.procedure;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.*;

import java.util.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class moviesp2 {
    @Id
    @Column(name = "id")
    private String id;

    @Column(name = "name")
    private String name;
}
