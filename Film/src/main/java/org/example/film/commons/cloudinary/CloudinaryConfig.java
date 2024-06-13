package org.example.film.commons.cloudinary;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import com.cloudinary.utils.ObjectUtils;


import java.util.Map;

@Component
@Getter
public class CloudinaryConfig {
    @Value("${cloudinary.cloud-name}")
    private String cloudName;
    @Value("${cloudinary.api-key}")
    private String apiKey;
    @Value("${cloudinary.secret-key}")
    private String apiSecret;

    public Map getConfig(){
        return ObjectUtils.asMap(
                "cloud_name", cloudName,
                        "api_key", apiKey,
                        "api_secret", apiSecret,
                        "secure",true);
    }
}
