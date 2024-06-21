package org.example.film.commons.cloudinary.requests;

import lombok.*;
import org.example.film.commons.cqrs.IRequest;
import org.springframework.web.multipart.MultipartFile;
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class FileVideoRequest implements IRequest<String> {
    private MultipartFile file;
}
