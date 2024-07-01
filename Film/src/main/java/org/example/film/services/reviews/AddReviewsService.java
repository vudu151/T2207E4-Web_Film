package org.example.film.services.reviews;

import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Reviews;
import org.example.film.models.requests.reviews.AddReviewRequest;
import org.example.film.repositories.IAccountRepository;
import org.example.film.repositories.IMoviesRepository;
import org.example.film.repositories.IReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class AddReviewsService implements IRequestHandler<AddReviewRequest,String> {

    @Autowired
    private IAccountRepository iAccountRepository;

    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Autowired
    private IReviewRepository iReviewRepository;
    @Override
    public HandleResponse<String> handle(AddReviewRequest addReviewRequest) throws Exception {
        var exitingAccount = iAccountRepository.findById(addReviewRequest.getAccountId());
        var exitingMovie = iMoviesRepository.findById(addReviewRequest.getMovies());
        if(exitingAccount.isEmpty()){
            return HandleResponse.error("account not data");
        } else if (exitingMovie.isEmpty()) {
            return HandleResponse.error("movie not data");
        } else {
            Reviews setReview = new Reviews();
            setReview.setAccount(exitingAccount.get());
            setReview.setStar(addReviewRequest.getStar());
            setReview.setTitle(addReviewRequest.getTitle());
            setReview.setComment(addReviewRequest.getComment());
            setReview.setCreateAt(new Date());
            setReview.setStatus(1);
            setReview.setMovies(exitingMovie.get());
            iReviewRepository.save(setReview);
            return HandleResponse.ok("review successfully added : " + setReview);
        }
    }
}
