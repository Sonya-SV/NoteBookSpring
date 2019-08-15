package com.training.spring.notebook.dto;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
public class NoteDTO {

    private String firstName;
    private String lastName;
    private String email;
    private String password;
}
