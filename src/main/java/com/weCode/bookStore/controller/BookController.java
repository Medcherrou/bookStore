package com.weCode.bookStore.controller;

import com.weCode.bookStore.dto.BookDto;
import org.apache.coyote.Response;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.awt.print.Book;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/v1/books")
public class BookController {

    @GetMapping
    ResponseEntity<List<BookDto>> getBooks(){
        BookDto bookDto = BookDto.builder().title("First Book").build();
        BookDto bookDto1 =BookDto.builder().title("Second Book").build();
        List<BookDto> bookDtos = new ArrayList<>();
        bookDtos.add(bookDto);
        bookDtos.add(bookDto1);
        return ResponseEntity.ok(bookDtos);
    }
}
