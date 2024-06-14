package org.example.film.services.celebrities;

import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Job;
import org.example.film.repositories.ICelebrityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CelebritiesService implements ICelebritiesService{
    @Autowired
    private ICelebrityRepository iCelebrityRepository;
    @Override
    public List<Celebrity> getListCelebrities() {
        return iCelebrityRepository.findAll();
    }

    @Override
    public Optional<Celebrity> getCelebrityById(String id) {
        return iCelebrityRepository.findById(id);
    }

}
