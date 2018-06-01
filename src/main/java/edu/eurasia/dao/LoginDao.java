package edu.eurasia.dao;

import edu.eurasia.entity.User;

/**
 * @author:Yang
 * @date:2018/5/30
 */
public interface LoginDao {
    User login(User user);
}
