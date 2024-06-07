package org.example.film.services.helps;

import org.example.film.models.entities.Help;

import java.util.List;
import java.util.Optional;

public interface IHelpsService {
    List<Help> getListHelp();
    Optional<Help> getHelpById(String id);
}
