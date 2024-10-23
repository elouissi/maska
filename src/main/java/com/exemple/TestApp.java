package com.exemple;

import com.exemple.model.User;
import com.exemple.service.UserService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestApp {
    public static void main(String[] args) {
        // Charger la configuration XML
        ClassPathXmlApplicationContext context =
                new ClassPathXmlApplicationContext("applicationContext.xml");

        UserService userService = context.getBean(UserService.class);

        User user = new User();
        user.setFirstName("John");
        user.setLastName("Doe");
        user.setEmail("john.doe@exemple.com");

        userService.saveUser(user);
        System.out.println("User saved: " + user);


        System.out.println("All users:");
        userService.getAllUsers().forEach(System.out::println);

        // Fermer le contexte
        context.close();
    }
}
