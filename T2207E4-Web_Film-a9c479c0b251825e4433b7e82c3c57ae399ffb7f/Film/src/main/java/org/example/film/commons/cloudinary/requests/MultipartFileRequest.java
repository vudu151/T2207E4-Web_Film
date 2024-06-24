package org.example.film.commons.cloudinary.requests;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;
import org.springframework.web.multipart.MultipartFile;

import java.util.Collection;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class MultipartFileRequest implements IRequest<Collection<String>> {
    private MultipartFile[] files;
}
