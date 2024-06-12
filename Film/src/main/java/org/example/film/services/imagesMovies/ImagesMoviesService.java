package org.example.film.services.imagesMovies;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.ImagesMovies;
import org.example.film.models.entities.Movies;
import org.example.film.repositories.IImagesMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ImagesMoviesService implements IImagesMoviesService{

    @Autowired
    private IImagesMoviesRepository iImagesMoviesRepository;

    @Override
    public List<ImagesMovies> getListImageMovieByMovieId(Movies movieId) {
        return iImagesMoviesRepository.findAllByMovieId(movieId);
    }

}
