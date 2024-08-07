package org.example.film.commons.cqrs;

import lombok.*;
import org.springframework.http.HttpStatus;
import org.springframework.web.server.ResponseStatusException;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class HandleResponse <T>{
    private T data = null;
    private String error;
    private HttpStatus httpStatus = HttpStatus.OK;

    public T get(){
        return data;
    }

    public boolean isOk(){
        return error == null || error.isEmpty();
    }

    public boolean hasError(){
        return error != null && !error.isEmpty();
    }

    public static <T>HandleResponse<T> ok(){
        return HandleResponse.<T>builder().build();
    }

    public static <T>HandleResponse<T> ok(T data){
        return HandleResponse.<T>builder().data(data).build();
    }

    public static <T>HandleResponse<T> error(String error){
        return HandleResponse.<T>builder().error(error).httpStatus(HttpStatus.BAD_REQUEST).build();
    }

    public static <T>HandleResponse<T> error(String error, HttpStatus httpStatus){
        return HandleResponse.<T>builder().error(error).httpStatus(httpStatus).build();
    }

    public T orThrow(){
        if(error !=null && !error.isEmpty()){
            throw new ResponseStatusException(httpStatus, error);
        }
        return data;
    }
}
