package com.nut.service;

import com.nut.model.User;

public interface UserService {
    User findUserByEmail(String email);
    void saveUser(User user);
}
