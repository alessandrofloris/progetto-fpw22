package it.unica.scarpex.mock;

import java.util.List;
import java.util.ArrayList;
import it.unica.scarpex.model.User;
import java.util.stream.Collectors;

public class UserMockUp extends ArrayList<User>{
    
    public UserMockUp() {
        this.add(new User("mariorossi", "Mario", "Rossi", "Roma", "mario@gmail.com", "rossi"));
        this.add(new User("giuliasanna", "Giulia", "Sanna", "Milano", "giulia@gmail.com", "sanna"));
        this.add(new User("saratommasi", "Sara", "Tommasi", "Cagliari", "sara@gmail.com", "tommasi"));
        this.add(new User("alessandrofloris", "Alessandro", "Floris", "Cagliari", "alessandro@gmail.com", "floris"));
    }
    
    public void addUser(User user) {
        this.add(user);
    }
    
    public User getUserByUsername(String username) {
         List<User> users =  this.stream()
                .filter( u -> u.getUsername().equals(username))
                .collect(Collectors.toList());
         if(users.size() > 0) {
             return users.get(0);
         } else {
             return null;
         }
    }
    
    public List<User> getAllUsers() {
        return this;
    }
    
    public boolean existsUser(String username, String password) {
         return this.stream()
                .filter( u -> u.getUsername().equals(username) && u.getPassword().equals(password))
                .count() > 0;
    }
    
}
