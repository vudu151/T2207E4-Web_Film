package org.example.film.commons.cloudinary.services.video;

import org.example.film.commons.cloudinary.IVideoCloudinaryService;
import org.example.film.commons.cloudinary.requests.FileRequest;
import org.example.film.commons.cloudinary.requests.FileVideoRequest;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FileVideoService implements IRequestHandler<FileVideoRequest,String> {
    @Autowired
    private IVideoCloudinaryService iVideoCloudinaryService;
    @Override
    public HandleResponse<String> handle(FileVideoRequest fileVideoRequest) throws Exception {
        try{
            return HandleResponse.ok(iVideoCloudinaryService.uploadVideo(fileVideoRequest.getFile()));
        } catch (Exception e){
            return HandleResponse.error(e.getMessage());
        }
    }
}
