package com.training.spring.notebook.controller;

import com.training.spring.notebook.entity.User;
import com.training.spring.notebook.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@Slf4j
@RestController
@RequestMapping(value = "/api")
public class RegFormController {
    //private final RegFormService regFormService;
    private final UserService userService;

    @Autowired
    public RegFormController(UserService userService) {
        this.userService = userService;
    }

//    public RegFormController(RegFormService regFormService) {
//        this.regFormService = regFormService;
//    }

//    @ResponseStatus(HttpStatus.CREATED)
//    @RequestMapping(value = "/reg_form", method = RequestMethod.POST)
//    public void registrationFormController(NoteDTO note) {
//        log.info("{}", note);
//
//    }

    @ResponseStatus(HttpStatus.CREATED)
    @RequestMapping(value = "/reg_form", method = RequestMethod.POST)
    public void registrationFormController(User user) {
        //userService.findByUserLogin()
        log.info("{}", user);
        userService.saveNewUser(user);

    }

    @ExceptionHandler(RuntimeException.class)
    public ResponseEntity handleRuntimeException(RuntimeException ex) {
        return new ResponseEntity(HttpStatus.BAD_REQUEST);
    }
}
