package org.example.film.commons.cloudinary.requests;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class DeleteFileRequest implements IRequest<String> {
    private String url;
}
