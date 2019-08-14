package com.training.spring.notebook.dto;

import com.training.spring.notebook.entity.User.*;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
public class UserDTO {
    private String email;
    private String password;
}
