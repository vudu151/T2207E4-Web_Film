package org.example.film.commons.cloudinary.services;

import org.example.film.commons.cloudinary.ICloudinaryService;
import org.example.film.commons.cloudinary.requests.MultipartFileRequest;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.CompletableFuture;

@Service
public class MultipartFileService implements IRequestHandler<MultipartFileRequest, Collection<String>> {
    @Autowired
    private ICloudinaryService iCloudinaryService;

    @Override
    public HandleResponse<Collection<String>> handle(MultipartFileRequest multipartFileRequest) throws Exception {
        try {
            List<CompletableFuture<String>> futures = Arrays.stream(multipartFileRequest.getFiles())
                    .map(multipartFile -> CompletableFuture.supplyAsync(() -> iCloudinaryService.uploadFile(multipartFile)))
                    .toList();
            CompletableFuture.allOf(futures.toArray(new CompletableFuture[0])).join();
            var result = futures.stream()
                    .map(CompletableFuture::join)
                    .toList();
            return HandleResponse.ok(result);
        }catch (Exception e){
            return HandleResponse.error(e.getMessage());
        }
    }
}
