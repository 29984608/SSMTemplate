package edu.eurasia.dao;

import edu.eurasia.entity.User;
import edu.eurasia.untils.PageUtils;

import java.util.List;
import java.util.Map;

/**
 * @author:Yang
 * @date:2018/5/30
 */
public interface LoginDao {
    /**
     * 登录
     *
     * @param user
     * @return User
     */
    User login(User user);

    /**
     * 查询数据总数
     * @return Integer
     */
    Integer queryCount();

    /**
     * 分页查询数据
     * @param pageUtils
     * @return  List<User>
     */
    List<User> queryProfession(PageUtils pageUtils);
}
