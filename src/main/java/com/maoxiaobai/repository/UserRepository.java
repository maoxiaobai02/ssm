package com.maoxiaobai.repository;

import com.maoxiaobai.entity.User;

import java.util.List;

public interface UserRepository {
    public List<User> findAll();
    public User findById(long id);
    public void save(User user);
    public void deleteById(long id);
    public void update(User user);

}
