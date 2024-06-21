//package org.example.film.services.imagesMovies;
//
//import lombok.RequiredArgsConstructor;
//import org.example.film.commons.cqrs.HandleResponse;
//import org.example.film.commons.cqrs.IRequestHandler;
//import org.example.film.models.entities.ImagesMovies;
//import org.example.film.models.requests.imagesMoviesRequest.AddImagesMoviesRequest;
//import org.example.film.repositories.IImagesMoviesRepository;
//import org.example.film.repositories.IMoviesRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import java.util.ArrayList;
//import java.util.List;
//
//@Service
//@RequiredArgsConstructor
//public class AddImagesMoviesService implements IRequestHandler<AddImagesMoviesRequest,String> {
//
//    @Autowired
//    private IImagesMoviesRepository iImagesMoviesRepository;
//
//    @Autowired
//    private IMoviesRepository iMoviesRepository;
//
//
//    public List<ImagesMovies> saveImagesForMovie(AddImagesMoviesRequest addImagesMoviesRequest){
//        List<String> links = addImagesMoviesRequest.getLink();
//        var existingMovie = iMoviesRepository.findById(addImagesMoviesRequest.getMovieId());
//        int Status = addImagesMoviesRequest.getStatus();
//        List<ImagesMovies> imagesMoviesList = new ArrayList<>();
//        for (String s : links){
//            ImagesMovies imagesMovies = ImagesMovies.builder()
//                    .link(s)
//                    .movieId(existingMovie.get())
//                    .Status(Status)
//                    .build();
//            imagesMoviesList.add(imagesMovies);
//        }
//        return iImagesMoviesRepository.saveAll(imagesMoviesList);
//    }
//
//    @Override
//    public HandleResponse<String> handle(AddImagesMoviesRequest addImagesMoviesRequest) throws Exception {
//        List<ImagesMovies> saveImages = saveImagesForMovie(addImagesMoviesRequest);
//        return HandleResponse.ok("News successfully added : " + saveImages);
//    }
//}
