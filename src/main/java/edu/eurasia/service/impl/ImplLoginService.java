package edu.eurasia.service.impl;

import edu.eurasia.dao.LoginDao;
import edu.eurasia.entity.User;
import edu.eurasia.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
