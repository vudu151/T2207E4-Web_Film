package org.example.film.models.requests.categoies;

import jakarta.validation.constraints.NotBlank;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class EditCategoriesRequest implements IRequest<String> {
    private String id;
    @NotBlank(message = "The name is not null.")
    private String name;
    @NotBlank(message = "The slug is not null.")
    private String slug;
    private int status;
}
