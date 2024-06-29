package org.example.film.usercontroller.models.procedure;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.*;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class RelatedEpisodeDTO {
    @Id
    private String id;
    private String name;
    private String movietile;
    private String  idmovie;

    // Getters, setters, and constructor


}