package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.ISender;
import org.example.film.models.entities.Category;
import org.example.film.models.requests.categoies.AddCategoriesRequest;
import org.example.film.models.requests.categoies.DeleteCategoriesRequest;
import org.example.film.models.requests.categoies.EditCategoriesRequest;
import org.example.film.services.categories.ICategoriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/categories")
public class CategoriesRestController {
    @Autowired
    private ISender iSender;

    @Autowired
    private ICategoriesService  iCategoriesService;

    @GetMapping("")
    public ResponseEntity<List<Category>> getListCategory(){
        var result = iCategoriesService.getListCategory();
        return ResponseEntity.ok(result);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Optional<Category>> getCategoryById(@PathVariable String id){
        try {
            Optional<Category> category = iCategoriesService.getCategoryById(id);
            if (category.isPresent()){
                return ResponseEntity.ok(category);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }

    @PostMapping("/add")
    public ResponseEntity<String> add(@Valid @RequestBody AddCategoriesRequest addCategoriesRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(addCategoriesRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add category news: " + e.getMessage());
        }
    }

    @PutMapping("/edit")
    public ResponseEntity<String> edit(@Valid @RequestBody EditCategoriesRequest editCategoriesRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try{
            var result = iSender.send(editCategoriesRequest);
            return ResponseEntity.ok(String.valueOf(result.orThrow()));
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to edit category news: " + e.getMessage());
        }
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<String> delete(@PathVariable String id){
        if (id == null) {
            throw new IllegalArgumentException("Id is null.");
        }else {
            iSender.send(new DeleteCategoriesRequest(id));
            return ResponseEntity.ok("Delete Category news successfully.");
        }
    }
}
