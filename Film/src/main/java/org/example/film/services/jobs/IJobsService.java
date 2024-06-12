package org.example.film.services.jobs;

import org.example.film.models.entities.Job;

import java.util.List;
import java.util.Optional;

public interface IJobsService {
    List<Job> getListJobs();
    Optional<Job> getJobById(String id);
    List<Job> getLatestJobs(int count);

}
