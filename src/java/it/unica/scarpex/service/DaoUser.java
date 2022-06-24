package it.unica.scarpex.service;

import java.util.List;
import java.util.ArrayList;

import it.unica.scarpex.model.User;
import it.unica.scarpex.mock.UserMockUp;


public class DaoUser  implements DaoInterface <User>{
      
    @Override
    public List<User> findAll() {
        
        return new ArrayList<>();
    }
    
    @Override
    public User findById(String id) {
        
        return new User();
    }
   
    @Override
    public List<User> findByName() {
        
        return new ArrayList<>();
    }
    
    public User findByUsername(String username) {
        UserMockUp mockUp = new UserMockUp();
        return mockUp.getUserByUsername(username);
    }
    
    @Override
    public <User> boolean insert(User el) {
        
        return true;
    }
    
    @Override
    public <User> boolean update(User el) {
        
        return true;
    }
    
    @Override
    public <User> boolean delete(User el) {
        
        return true;
    }
    
}
