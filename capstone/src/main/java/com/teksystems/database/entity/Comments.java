package com.teksystems.database.entity;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 * comments entity that is the same as the comments table in the database
 * has two many to ones relationships to books and users
 */
@Getter
@Setter
@ToString
@Entity
@Table(name = "comments")
public class Comments {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "user_id", insertable=false, updatable=false)
    private Integer userId;

    @Column(name = "book_id", insertable=false, updatable=false)
    private Integer bookId;

    @Column(name = "create_date")
    private Date createDate;


    @Column(name = "description")
    private String comment;

    @ToString.Exclude
    @ManyToOne(fetch = FetchType.EAGER, optional = true, cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id", nullable = true)
    private User user;

    @ToString.Exclude
    @ManyToOne(fetch = FetchType.EAGER, optional = true, cascade = CascadeType.ALL)
    @JoinColumn(name = "book_id", nullable = true)
    private Book book;



}
