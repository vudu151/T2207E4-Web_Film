package org.example.film.commons.cloudinary.rest;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cloudinary.requests.DeleteFileRequest;
import org.example.film.commons.cloudinary.requests.FileRequest;
import org.example.film.commons.cloudinary.requests.MultipartFileRequest;
import org.example.film.commons.cqrs.ISender;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/v1/files")
public class FilesRestController {
    @Autowired
    private ISender iSender;

    @PostMapping("/upload")
    public ResponseEntity<String> upload(@RequestParam("file") @RequestBody MultipartFile file){
        var fileRequest = new FileRequest(file);
        var result = iSender.send(fileRequest);
        return ResponseEntity.ok(result.orThrow());
    }

    @PostMapping("/uploads")
//    public ResponseEntity<String[]> uploads(@RequestParam("files") MultipartFile[] files){
    public ResponseEntity<String[]> uploads(@RequestBody MultipartFile[] files){
        var multipartFileRequest = new MultipartFileRequest(files);
        var result = iSender.send(multipartFileRequest);
        String[] arrays = result.get().toArray(new String[0]);       //Lấy kết quả từ result (dạng Collection<String>), chuyển đổi thanh String[].
        return ResponseEntity.ok(arrays);
    }

    @DeleteMapping("/delete")
    public ResponseEntity<String> deleteFile(@RequestParam("url") String url){
        try{
            var deleteFileRequest = new DeleteFileRequest(url);
            var result = iSender.send(deleteFileRequest);
            if (result.isOk()) {
                return ResponseEntity.ok("File deleted successfully.");
            } else {
                return ResponseEntity.status(500).body("Failed to delete file: " + result.getError());
            }        } catch (Exception e) {
            return ResponseEntity.status(500).body("Failed to delete file: " + e.getMessage());
        }
    }
}
