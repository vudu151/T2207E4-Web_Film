package org.example.film.services.celebrities;

import com.github.slugify.Slugify;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.requests.celebrities.AddCelebrityRequest;
import org.example.film.repositories.ICelebrityRepository;
import org.example.film.repositories.IJobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Random;

@Service
public class AddCelebrityService implements IRequestHandler<AddCelebrityRequest, String> {
    @Autowired
    private ICelebrityRepository iCelebrityRepository;
    @Autowired
    private IJobRepository iJobRepository;

    @Transactional
    @Override
    public HandleResponse<String> handle(AddCelebrityRequest addCelebrityRequest) throws Exception {
        var existingJob = iJobRepository.findAllById(addCelebrityRequest.getJobsId());
        if(existingJob.isEmpty()){
            return HandleResponse.error("Job does not exist.");
        }

        Slugify slugify = new Slugify();
        String slug = slugify.slugify(addCelebrityRequest.getName());
        Optional<Celebrity> existingCelebrity = iCelebrityRepository.findBySlug(slug);
        if(existingCelebrity.isPresent()){          //Neu slug ton tai, them 1 so ngau nhien tu 1-1000 va kiem tra den khi slug khong con trung lap
            slug = slug + "-" + new Random().nextInt(1000);
            existingCelebrity = iCelebrityRepository.findBySlug(slug);
        }

        Celebrity celebrity = Celebrity.builder()
                .name(addCelebrityRequest.getName())
                .birthday(addCelebrityRequest.getBirthday())
                .country(addCelebrityRequest.getCountry())
                .bio(addCelebrityRequest.getBio())
                .poster(addCelebrityRequest.getPoster())
                .slug(slug)
                .status(addCelebrityRequest.isStatus())
                .jobs(existingJob) // Truyen danh sach cong viec truc tiep tu request
                .build();

        List<String> currentImage = celebrity.getImages();
        if(currentImage == null) {
            currentImage = new ArrayList<>();
        }
        if(addCelebrityRequest.getImagesId() != null){
            currentImage.addAll(addCelebrityRequest.getImagesId());
        }
        celebrity.setImages(currentImage);

        iCelebrityRepository.save(celebrity);
        return HandleResponse.ok(celebrity.getId());
    }
}
