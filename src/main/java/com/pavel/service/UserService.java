package com.pavel.service;

import com.pavel.model.User;

import java.util.List;

public interface UserService {

    public User findUserById(int id);

    public void saveUser(User user);

    public void updateUser(User user);

    public void deleteUserById(int id);

    public List<User> findAllUsers();

}
