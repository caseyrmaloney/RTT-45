package com.teksystems.formbeans;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 * book form bean to get the information on a specific book
 */
@Getter
@Setter
@ToString
public class BookFormBean {

    private Integer id;
    private String title;
    private String genre;
    private String description;
    private Date publishDate;
    private String author;
    private Integer pageLength;
    private String bookCover;

}
