package org.example.film.commons.cloudinary;

import org.springframework.web.multipart.MultipartFile;

public interface ICloudinaryService {
    String uploadFile(MultipartFile multipartFile);
    String deleteFile(String url);
}
