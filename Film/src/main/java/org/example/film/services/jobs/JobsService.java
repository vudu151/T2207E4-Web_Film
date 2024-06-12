package org.example.film.services.jobs;

import org.example.film.models.entities.Job;
import org.example.film.repositories.IJobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

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

    @Override
    public List<Job> getLatestJobs(int count) {
        List<Job> allJobs = iJobRepository.findAll();
        return allJobs.stream()
                .limit(count)
                .collect(Collectors.toList());
    }
}
