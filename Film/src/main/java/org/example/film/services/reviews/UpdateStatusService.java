package org.example.film.services.reviews;

import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Reviews;
import org.example.film.models.requests.reviews.UpdateStatusReviewRequest;
import org.example.film.repositories.IReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UpdateStatusService implements IRequestHandler<UpdateStatusReviewRequest,String> {

    @Autowired
    private IReviewRepository iReviewRepository;
    @Override
    public HandleResponse<String> handle(UpdateStatusReviewRequest updateStatusReviewRequest) throws Exception {
        var exitingReview = iReviewRepository.findById(updateStatusReviewRequest.getId());
        if (exitingReview.isEmpty()){
            return HandleResponse.error("review is not data");
        } else {
            Reviews setReview = exitingReview.get();
            setReview.setStatus(1);
            iReviewRepository.save(setReview);
            return HandleResponse.ok("Update Status successfully: " + exitingReview.get().getAccount().getUserName());
        }
    }
}
