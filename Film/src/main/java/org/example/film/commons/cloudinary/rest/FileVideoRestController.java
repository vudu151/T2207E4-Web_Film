package org.example.film.commons.cloudinary.rest;

import org.example.film.commons.cloudinary.requests.FileRequest;
import org.example.film.commons.cloudinary.requests.FileVideoRequest;
import org.example.film.commons.cqrs.ISender;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/v1/files/video")
public class FileVideoRestController {
    @Autowired
    private ISender iSender;

    @PostMapping("/upload")
    public ResponseEntity<String> upload(@RequestParam("file") @RequestBody MultipartFile file){
        var fileVideoRequest = new FileVideoRequest(file);
        var result = iSender.send(fileVideoRequest);
        return ResponseEntity.ok(result.orThrow());
    }

}
