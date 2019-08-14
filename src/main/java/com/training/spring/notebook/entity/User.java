package com.training.spring.notebook.entity;


import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
public class User {

    private  Long id;
    private String name;
    private String email;
    private String login;


}
