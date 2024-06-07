package org.example.film.models.requests.categoies;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.example.film.commons.cqrs.IRequest;

import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class AddCategoriesRequest implements IRequest<String> {
    @NotBlank(message = "The name is not null.")
    private String name;
    @NotBlank(message = "The slug is not null.")
    private String slug;
    private int status;
}
