package org.example.film.commons.cloudinary.services;

import org.example.film.commons.cloudinary.ICloudinaryService;
import org.example.film.commons.cloudinary.requests.DeleteFileRequest;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DeleteFileService implements IRequestHandler<DeleteFileRequest, String> {
    @Autowired
    private ICloudinaryService iCloudinaryService;

    @Override
    public HandleResponse<String> handle(DeleteFileRequest deleteFileRequest) throws Exception {
        try{
            return HandleResponse.ok(iCloudinaryService.deleteFile(deleteFileRequest.getUrl()));
        } catch (Exception e){
            return HandleResponse.error(e.getMessage());
        }
    }
}
