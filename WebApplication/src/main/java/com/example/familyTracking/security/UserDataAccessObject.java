package com.example.familyTracking.security;

import org.springframework.lang.NonNull;
import org.springframework.stereotype.Component;
import org.springframework.beans.factory.annotation.Autowired;

import com.example.familyTracking.security.User;
import com.example.familyTracking.repositories.UserRepository;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

@Component
public class UserDataAccessObject {
    @Autowired
    private UserRepository userRepository;
    public Optional<User> findByUsername(@NonNull String username){
        User user = null;
      //  User user = userRepository.findByUsername(username);
        //find user in database here

        return Optional.ofNullable(user);
    }

    public Optional<List<User>> getAllUsers(){
        List<User> userList = new LinkedList<User>();
        //get all users from database here
        return Optional.ofNullable(userList);
    }

    public boolean saveUser(User newUser){
        //call database user saving here
        userRepository.save(newUser);
        return false;
    }

    public boolean deleteUserByUsername(@NonNull String username){
        //call database user deleting here
        return false;
    }
}