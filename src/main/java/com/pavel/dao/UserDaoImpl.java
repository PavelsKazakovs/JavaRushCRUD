package com.pavel.dao;

import com.pavel.model.User;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {


    public User findById(int id) {
        return getByKey(id);
    }

    public void saveUser(User user) {
        persist(user);
    }

    public void deleteUserById(int id) {
        Query query = getSession().createSQLQuery("DELETE FROM User WHERE id = :id");
        query.setInteger("id", id);
        query.executeUpdate();
    }

    @SuppressWarnings("unchecked")
    public List<User> findAllUsers() {
        Criteria criteria = createEntityCriteria();
        return (List<User>) criteria.list();
    }
}
