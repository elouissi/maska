package com.exemple;

import com.exemple.config.AppConfig;
import com.exemple.model.User;
import com.exemple.service.UserService;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class TestApp {
    public static void main(String[] args) {
        AnnotationConfigApplicationContext context =
                new AnnotationConfigApplicationContext(AppConfig.class);

        UserService userService = context.getBean(UserService.class);

        User user = new User();
        user.setFirstName("John");
        user.setLastName("Doe");
        user.setEmail("john.doe@exemple.com");

        userService.saveUser(user);
        System.out.println("User saved: " + user);

        System.out.println("All users:");
        userService.getAllUsers().forEach(System.out::println);

        context.close();
    }
}