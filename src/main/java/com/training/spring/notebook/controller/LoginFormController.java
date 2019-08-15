package com.training.spring.notebook.controller;

import com.training.spring.notebook.dto.UserDTO;
import com.training.spring.notebook.dto.UsersDTO;
import com.training.spring.notebook.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping(value = "/")
public class LoginFormController {

    private final UserService userService;
    //private final LoginFormService loginFormService;

    @Autowired
    public LoginFormController(UserService userService) {
        this.userService = userService;
       // this.loginFormService=loginFormService;
    }

    @ResponseStatus(HttpStatus.CREATED)
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public void loginFormController(UserDTO user){
        log.info("{}",userService.findByUserLogin(user));
        log.info("{}", user);
//        userService.saveNewUser(user);
//        userService.saveNewUser(User.builder()
//                .firstName("Kate")
//                .lastName("Dev")
//                .email("KateDev@test.com")
//                .role(RoleType.ROLE_USER)
//                .build());
    }
    @RequestMapping(value = "user", method = RequestMethod.GET)
    public UsersDTO getAllUser(){
        log.info("{}",userService.getAllUsers());
        return userService.getAllUsers();
    }


}
