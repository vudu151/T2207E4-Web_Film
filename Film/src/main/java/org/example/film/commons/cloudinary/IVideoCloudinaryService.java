package org.example.film.commons.cloudinary;

import org.springframework.web.multipart.MultipartFile;

public interface IVideoCloudinaryService {
    String uploadVideo(MultipartFile multipartFile);
}
