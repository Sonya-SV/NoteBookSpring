package com.training.spring.notebook.dto;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
public class NoteDTO {

    private String name;
    private String login;
}
