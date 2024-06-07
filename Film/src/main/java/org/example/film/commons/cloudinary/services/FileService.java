package org.example.film.commons.cloudinary.services;

import org.example.film.commons.cloudinary.ICloudinaryService;
import org.example.film.commons.cloudinary.requests.FileRequest;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FileService implements IRequestHandler<FileRequest, String> {
    @Autowired
    private ICloudinaryService iCloudinaryService;

    @Override
    public HandleResponse<String> handle(FileRequest fileRequest) throws Exception {
        try{
            return HandleResponse.ok(iCloudinaryService.uploadFile(fileRequest.getFile()));
        } catch (Exception e){
            return HandleResponse.error(e.getMessage());
        }
    }
}
