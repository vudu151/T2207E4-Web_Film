package org.example.film.services.job;

import org.example.film.models.entities.Job;
import org.example.film.repositories.IJobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class JobsService implements IJobsService{
    @Autowired
    private IJobRepository iJobRepository;
    @Override
    public List<Job> getListJobs() {
        return iJobRepository.findAll();
    }

    @Override
    public Optional<Job> getJobById(String id) {
        return iJobRepository.findById(id);
    }
}
