package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import org.example.film.commons.cqrs.ISender;
import org.example.film.models.entities.Job;
import org.example.film.models.requests.jobs.DeleteJobRequest;
import org.example.film.models.requests.jobs.EditJobRequest;
import org.example.film.services.jobs.IJobsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.example.film.models.requests.jobs.AddJobRequest;

import java.util.List;
import java.util.Optional;


@RestController
@RequestMapping("/v1/jobs")
public class JobsRestController {
    @Autowired
    private ISender iSender;
    @Autowired
    private IJobsService iJobsService;

    @GetMapping
    public ResponseEntity<List<Job>> getListJobs(){
        var result = iJobsService.getListJobs();
        return ResponseEntity.ok(result);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Optional<Job>> getJobById(@PathVariable String id){
        try {
            Optional<Job> job = iJobsService.getJobById(id);
            if(job.isPresent()) {
                return ResponseEntity.ok(job);
            } else {
                return ResponseEntity.notFound().build();
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }

    @PostMapping("/add")
    public ResponseEntity<String> add(@Valid @RequestBody AddJobRequest addJobRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(addJobRequest);
            return ResponseEntity.ok(result.orThrow());
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add job: " + e.getMessage());
        }
    }

    @PutMapping("/edit")
    public ResponseEntity<String> edit(@Valid @RequestBody EditJobRequest editJobRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(editJobRequest);
            return ResponseEntity.ok(String.valueOf(result.orThrow()));
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to edit job: " + e.getMessage());
        }
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<String> delete(@PathVariable String id){
        if (id == null) throw new IllegalArgumentException("Id is null.");
        iSender.send(new DeleteJobRequest(id));
        return ResponseEntity.ok("Delete job successfully.");
    }

}
