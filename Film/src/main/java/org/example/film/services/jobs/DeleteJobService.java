package org.example.film.services.jobs;

import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Job;
import org.example.film.models.requests.jobs.DeleteJobRequest;
import org.example.film.repositories.IJobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class DeleteJobService implements IRequestHandler<DeleteJobRequest, String> {
    @Autowired
    private IJobRepository iJobRepository;
    @Override
    public HandleResponse<String> handle(DeleteJobRequest deleteJobRequest) throws Exception {
        Optional<Job> jobExist = iJobRepository.findById(deleteJobRequest.getId());
        if(jobExist.isEmpty()){
            return HandleResponse.error("Job does not exist.");
        }
        iJobRepository.delete(jobExist.get());
        return HandleResponse.ok("Delete job successfully.");
    }
}
