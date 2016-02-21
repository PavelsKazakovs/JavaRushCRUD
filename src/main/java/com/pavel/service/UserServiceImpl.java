package com.pavel.service;

import com.pavel.dao.UserDao;
import com.pavel.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao dao;

    public User findUserById(int id) {
        return dao.findById(id);
    }

    public void saveUser(User user) {
        dao.saveUser(user);
    }

    public void updateUser(User user) {
        User entity = dao.findById(user.getId());
        if (entity != null) {
            entity.setName(user.getName());
            entity.setAge(user.getAge());
            entity.setIsAdmin(user.isIsAdmin());
            entity.setCreatedDate(user.getCreatedDate());
        }
    }

    public void deleteUserById(int id) {
        dao.deleteUserById(id);
    }

    public List<User> findAllUsers() {
        return dao.findAllUsers();
    }
}
