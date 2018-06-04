package edu.eurasia.dao;

import edu.eurasia.entity.User;

import java.util.List;
import java.util.Map;

/**
 * @author:Yang
 * @date:2018/5/30
 */
public interface LoginDao {
    /**
     * 登录
     * @param user
     * @return
     */
    User login(User user);

    /**
     * 分页查询数据
     * @return
     */
    List<User> queryProfession();
}
