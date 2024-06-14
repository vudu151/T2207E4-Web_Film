package org.example.film.services.helps;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.Help;
import org.example.film.repositories.IHelpsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class HelpsService implements IHelpsService{
    @Autowired
    private IHelpsRepository iHelpsRepository;
    @Override
    public List<Help> getListHelp() {
        return iHelpsRepository.findAll();
    }

    @Override
    public Optional<Help> getHelpById(String id) {
        return iHelpsRepository.findById(id);
    }
}
