//package org.example.film.services.imagesMovies;
//
//import lombok.RequiredArgsConstructor;
//import org.example.film.commons.cqrs.HandleResponse;
//import org.example.film.commons.cqrs.IRequestHandler;
//import org.example.film.models.entities.ImagesMovies;
//import org.example.film.models.entities.Movies;
//import org.example.film.models.requests.imagesMoviesRequest.EditImagesMoviesRequest;
//import org.example.film.repositories.IImagesMoviesRepository;
//import org.example.film.repositories.IMoviesRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import java.util.ArrayList;
//import java.util.List;
//@Service
//@RequiredArgsConstructor
//public class EditImagesMoviesService implements IRequestHandler<EditImagesMoviesRequest, String> {
//    private final IMoviesRepository moviesRepository;
//    private final IImagesMoviesRepository imagesMoviesRepository;
//
//    @Override
//    public HandleResponse<String> handle(EditImagesMoviesRequest editImagesMoviesRequest) throws Exception {
////        EditImagesMoviesRequest request = editImagesMoviesService.getEditImagesMoviesRequest();
//        List<ImagesMovies> updatedImagesMovies = editImagesMoviesForMovies(editImagesMoviesRequest);
//        return HandleResponse.ok("News successfully added : " + updatedImagesMovies);
//    }
//
//    public List<ImagesMovies> editImagesMoviesForMovies(EditImagesMoviesRequest editImagesMoviesRequest) {
//        List<String> links = editImagesMoviesRequest.getLink();
//        Movies movie = moviesRepository.findById(editImagesMoviesRequest.getMovieId()).orElseThrow(() -> new RuntimeException("Movie not found"));
//        List<ImagesMovies> existingImagesMovies = imagesMoviesRepository.findAllByMovieId(movie);
//        int status = editImagesMoviesRequest.getStatus();
//
//        List<ImagesMovies> updatedImagesMovies = new ArrayList<>();
//        for (ImagesMovies imageMovie : existingImagesMovies) {
//            if (links.contains(imageMovie.getLink())) {
//                imageMovie.setStatus(status);
//                ImagesMovies updatedImageMovie = imagesMoviesRepository.save(imageMovie);
//                updatedImagesMovies.add(updatedImageMovie);
//                links.remove(imageMovie.getLink()); // remove the link that has been updated
//            } else {
//                imagesMoviesRepository.delete(imageMovie); // delete the image movie that is no longer in the list
//            }
//        }
//
//        // add new image movies
//        for (String link : links) {
//            ImagesMovies newImageMovie = ImagesMovies.builder()
//                    .link(link)
//                    .movieId(movie)
//                    .Status(status)
//                    .build();
//            ImagesMovies savedImageMovie = imagesMoviesRepository.save(newImageMovie);
//            updatedImagesMovies.add(savedImageMovie);
//        }
//        return imagesMoviesRepository.saveAll(updatedImagesMovies);
//    }
//}