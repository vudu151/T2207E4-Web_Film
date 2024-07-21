package org.example.film.models.entities.procedure;

import jakarta.persistence.*;
import lombok.*;
import org.example.film.models.entities.Category;
import org.hibernate.annotations.GenericGenerator;

import java.util.Date;
import java.util.List;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class newsSp {
    @Id
    @Column(name = "id")
    private String id;

    @Column(name = "name")
    private String name;

    @Column(name = "created_add")
    private Date createdAdd;

    @Column(name = "update_add")
    private Date updateAdd;

    @Column(name = "tag")
    private String tag;


    @Column(name = "description", columnDefinition = "TEXT")
    private String description;


    @Column(name = "poster")
    private String poster;
    @Column(name = "description2" , columnDefinition = "TEXT")
    private String description2;
    @Column(name = "description3", columnDefinition = "TEXT")
    private String description3;
    @Column(name = "image1")
    private String image1;
    @Column(name = "image2")
    private String image2;
    @Column(name = "view_count", columnDefinition = "integer default 0")
    private Integer viewCount;
    @Column(name = "status")
    private int status;
    @Column(name = "total_newss")
    private Integer totalnewss;

    @Column(name = "total_pageds")
    private Integer totalpageds;

}
