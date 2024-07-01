package org.example.film.services.castings;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Casting;
import org.example.film.models.requests.casting.AddCastingRequest;
import org.example.film.repositories.ICastingRepository;
import org.example.film.repositories.ICelebrityRepository;
import org.example.film.repositories.IJobRepository;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AddCastingService implements IRequestHandler<AddCastingRequest,String> {

    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Autowired
    private IJobRepository iJobRepository;

    @Autowired
    private ICelebrityRepository iCelebrityRepository;

    @Autowired
    private ICastingRepository iCastingRepository;
    @Override
    public HandleResponse<String> handle(AddCastingRequest addCastingRequest) throws Exception {
        var existingMovie = iMoviesRepository.findById(addCastingRequest.getMovies());
        var existingJob = iJobRepository.findById(addCastingRequest.getJob());
        var exitingCelebrity = iCelebrityRepository.findById(addCastingRequest.getCelebrity());
        var exitingCasting = iCastingRepository.findByCelebrityAndJobsAndMovies(exitingCelebrity.get(),existingJob.get(),existingMovie.get());
        if(exitingCasting.isPresent()){
            return HandleResponse.error("existingCasting already exists");
        }else {
            Casting setCasting = new Casting();
            setCasting.setMovies(existingMovie.get());
            setCasting.setCelebrity(exitingCelebrity.get());
            setCasting.setJobs(existingJob.get());
            setCasting.setStatus(addCastingRequest.getStatus());
            iCastingRepository.save(setCasting);
            return HandleResponse.ok("Casting successfully added : " + setCasting);
        }
    }
}
