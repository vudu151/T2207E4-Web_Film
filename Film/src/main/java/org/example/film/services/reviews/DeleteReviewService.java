package org.example.film.services.reviews;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Reviews;
import org.example.film.models.requests.reviews.DeleteReviewRequest;
import org.example.film.repositories.IReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class DeleteReviewService implements IRequestHandler<DeleteReviewRequest,String> {
    @Autowired
    private IReviewRepository iReviewRepository;
    @Override
    public HandleResponse<String> handle(DeleteReviewRequest deleteReviewRequest) throws Exception {
        Optional<Reviews> getReview = iReviewRepository.findById(deleteReviewRequest.getId());
        if (getReview.isEmpty()){
            return HandleResponse.error("review does not exist.");
        } else {
            iReviewRepository.delete(getReview.get());
            return HandleResponse.ok("Delete review successfully.");
        }
    }
}
