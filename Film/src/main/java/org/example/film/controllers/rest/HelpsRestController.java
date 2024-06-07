package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.ISender;
import org.example.film.models.entities.Help;
import org.example.film.models.requests.helps.AddHelpRequest;
import org.example.film.models.requests.helps.DeleteHelpRequest;
import org.example.film.models.requests.helps.EditHelpRequest;
import org.example.film.services.helps.IHelpsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/helps")
public class HelpsRestController {
    @Autowired
    private ISender iSender;

    @Autowired
    private IHelpsService iHelpsService;

    @GetMapping()
    public ResponseEntity<List<Help>> getListHelp(){
        var result = iHelpsService.getListHelp();
        return ResponseEntity.ok(result);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Optional<Help>> getHelpById(@PathVariable String id){
        try {
            Optional<Help> getHelp = iHelpsService.getHelpById(id);
            if(getHelp.isPresent()){
                return ResponseEntity.ok(getHelp);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }
    @PostMapping("/add")
    public ResponseEntity<String> add (@Valid @RequestBody AddHelpRequest addHelpRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return ResponseEntity.badRequest().body("Invalid data.");
        }try{
            var result = iSender.send(addHelpRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add help: " + e.getMessage());
        }
    }
    @PutMapping("/edit")
    public ResponseEntity<String> edit(@Valid @RequestBody EditHelpRequest editHelpRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return ResponseEntity.badRequest().body("Invalid data.");
        }try {
            var result = iSender.send(editHelpRequest);
            return ResponseEntity.ok(String.valueOf(result.orThrow()));
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to edit help movie: " + e.getMessage());
        }
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<String> delete(@PathVariable String id){
        if (id == null) {
            throw new IllegalArgumentException("Id is null.");
        }else {
            iSender.send(new DeleteHelpRequest(id));
            return ResponseEntity.ok("Delete help successfully.");
        }
    }
}
