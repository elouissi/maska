package com.exemple;

import com.exemple.model.User;
import com.exemple.service.UserService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Optional;

public class TestApp {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext context =
                new ClassPathXmlApplicationContext("applicationContext.xml");

        UserService userService = context.getBean(UserService.class);

        User user = new User();
        user.setFirstName("ziko");
        user.setLastName("sasasa");
        user.setEmail("ziko.doe@exemple.com");

        userService.saveUser(user);
        System.out.println("User saved: " + user);


        System.out.println("All users:");
        userService.getAllUsers().forEach(System.out::println);

        Optional<User> user1 = userService.getUserById(8L);
        System.out.println("voila luser get:"+user1.get().getFirstName());

        Optional<User> userToUpdateOpt = userService.getUserById(user.getId());
        if(userToUpdateOpt.isPresent()) {
            User userToUpdate = userToUpdateOpt.get();
            userToUpdate.setFirstName("yassine");
            User updated = userService.updateUser(userToUpdate);
            System.out.println("User updated: " + updated);
        } else {
            System.out.println("User not found for update.");
        }

        context.close();
    }
}
