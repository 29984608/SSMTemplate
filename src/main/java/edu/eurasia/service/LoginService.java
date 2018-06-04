package edu.eurasia.service;

import edu.eurasia.entity.User;

import java.util.List;

/**
 * @author:Yang
 * @date:2018/5/30
 */
public interface LoginService {
    /**
     *
     * @param user
     * @return
     */
    User login(User user);

    /**
     *
     * @return
     */
    List<User> queryProfession();
}
