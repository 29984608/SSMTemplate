package edu.eurasia.service;

import edu.eurasia.entity.User;
import edu.eurasia.untils.PageUtils;

import java.util.List;

/**
 * @author:Yang
 * @date:2018/5/30
 */
public interface LoginService {
    /**
     *用户登录
     * @param user
     * @return
     */
    User login(User user);
    /**
     * 查询总数据数
     * @return
     */
    Integer queryCount();
    /**
     *分页查询数据
     * @param pageUtils
     * @return
     */
    List<User> queryProfession(PageUtils pageUtils);
}
