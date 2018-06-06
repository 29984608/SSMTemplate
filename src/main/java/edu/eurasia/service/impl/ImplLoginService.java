package edu.eurasia.service.impl;

import edu.eurasia.dao.LoginDao;
import edu.eurasia.entity.User;
import edu.eurasia.service.LoginService;
import edu.eurasia.untils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author:Yang
 * @date:2018/5/30
 */
@Service
public class ImplLoginService implements LoginService {
    @Autowired
    LoginDao loginDao;

    @Override
    public User login(User user) {
        return loginDao.login(user);
    }

    @Override
    public List<User> queryProfession(PageUtils page) {
        PageUtils pageUtils = new PageUtils();
        pageUtils.setCurrentIndex((page.getCurrentIndex() - 1) * page.getLimitIndex());
        pageUtils.setLimitIndex(page.getLimitIndex());
        System.out.println(pageUtils.getCurrentIndex());
        System.out.println(pageUtils.getLimitIndex());
        return loginDao.queryProfession(pageUtils);
    }

    @Override
    public Integer queryCount() {
        return loginDao.queryCount();
    }
}
