package org.example.film.commons.cloudinary;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.UUID;

@Service
public class CloudinaryService implements ICloudinaryService {
    private final Cloudinary cloudinary;

    //Inject Cloudinary vao Constructor
    @Autowired
    public CloudinaryService(CloudinaryConfig cloudinaryConfig) {
        this.cloudinary = new Cloudinary(cloudinaryConfig.getConfig());
    }

    @Override
    public String uploadFile(MultipartFile multipartFile) {
        try{
            //Lay ten tep goc va tao ten moi duy nhat cho tep tai len
            var fileName = multipartFile.getOriginalFilename();
            assert fileName !=  null;           //Dam bao ten tep khong null
            String newFileName = UUID.randomUUID().toString() + fileName.substring(fileName.lastIndexOf("."));
            String publicId = "fptaptech/" + newFileName;
            var params = ObjectUtils.asMap("public_id", publicId, "overwrite", true, "resource_type", "image"); //Tep moi se ghi de len tep cu co cung publicId, kieu ten tep la Image

            //Tai tep len Cloudinary va lay URL bao mat
            var uploadResult = cloudinary.uploader().upload(multipartFile.getBytes(), params);
            return uploadResult.get("secure_url").toString();
        }catch (Exception e){
            throw new RuntimeException("Failed to upload file : " + e.getMessage());
        }
    }

    @Override
    public void deleteFile(String url) {
        try {
            var publicId = url.substring(url.lastIndexOf("/") + 1, url.lastIndexOf("."));       //Trả về phần của URL giữa dấu / và dấu .
            cloudinary.uploader().destroy("/fptaptech" + publicId, ObjectUtils.emptyMap());     // Xóa tệp trên Cloudinary
        } catch (Exception e){
            throw new RuntimeException("Failed to delete file :" + e.getMessage());
        }
    }
}
