package org.example.film.commons.cloudinary;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.UUID;

@Service
public class CloudinaryVideoService implements IVideoCloudinaryService{
    private final Cloudinary cloudinary;

    @Autowired
    public CloudinaryVideoService(CloudinaryConfig cloudinaryConfig) {
        this.cloudinary = new Cloudinary(cloudinaryConfig.getConfig());
    }

    @Override
    public String uploadVideo(MultipartFile multipartFile) {
        try{
            //Lay ten tep goc va tao ten moi duy nhat cho tep tai len
            var fileName = multipartFile.getOriginalFilename();
            assert fileName !=  null;           //Dam bao ten tep khong null
            String newFileName = UUID.randomUUID().toString() + fileName.substring(fileName.lastIndexOf("."));
            String publicId = "fptaptech/video/" + newFileName;
            var params = ObjectUtils.asMap("public_id", publicId, "overwrite", true, "resource_type", "video"); //Tep moi se ghi de len tep cu co cung publicId, kieu ten tep la Image

            //Tai tep len Cloudinary va lay URL bao mat
            var uploadResult = cloudinary.uploader().upload(multipartFile.getBytes(), params);
            return uploadResult.get("secure_url").toString();
        }catch (Exception e){
            throw new RuntimeException("Failed to upload file : " + e.getMessage());
        }
    }
}
