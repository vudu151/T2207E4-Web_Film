package org.example.film.services.celebrities;

import jakarta.transaction.Transactional;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Job;
import org.example.film.models.entities.procedure.cebritiesp;
import org.example.film.repositories.ICelebrityRepository;
import org.example.film.repositories.procedure.ICebritiesSPRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CelebritiesService implements ICelebritiesService{
    @Autowired
    private ICelebrityRepository iCelebrityRepository;
    @Autowired
    private ICebritiesSPRepository iCebritiesSPRepository;
    @Override
    public List<Celebrity> getListCelebrities() {
        return iCelebrityRepository.findAll();
    }

    @Override
    public Optional<Celebrity> getCelebrityById(String id) {
        return iCelebrityRepository.findById(id);
    }

    @Override
    @Transactional
    public List<cebritiesp> GetCebrityPage(
            int page,
            int size ,
            String searchTerm,
            String letter,
            String p_job,
            int p_yearfrom,
            int p_yearto
    ){
        return iCebritiesSPRepository.GetCebrityPage(page, size, searchTerm, letter, p_job, p_yearfrom, p_yearto);
    }
}
