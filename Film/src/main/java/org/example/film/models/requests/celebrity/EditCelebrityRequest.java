package org.example.film.models.requests.celebrity;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;
import org.example.film.models.enums.Country;

import java.time.LocalDate;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class EditCelebrityRequest implements IRequest<String> {
    private String id;

    @NotBlank(message = "The name is not null.")
    @Size(min = 1, message = "Minimum length is 1.")
    private String name;

    @NotNull(message = "The birthday is not null.")
    private LocalDate birthday;

    @NotNull(message = "The country is not null.")
    private Country country;

    @NotBlank(message = "The description is not null.")
    @Size(max = 255, message = "Maximum length is 255.")
    private String bio;

    @NotBlank(message = "The poster is not null.")
    private String poster;

    @NotNull(message = "The status is not null.")
    private boolean status;

    @NotNull(message = "The job is not null.")
    private List<String> jobsId;

    private List<String> imagesId;
}
