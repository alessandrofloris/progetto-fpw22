package it.unica.scarpex.model;

import it.unica.scarpex.mock.UserMockUp;


/**
 *
 * @author alessandrofloris
 */
public class LoginDaoMockUp implements LoginDao{

    @Override
    public boolean authenticate(LoginBean loginBean) {
        
        UserMockUp mockUp = new UserMockUp();
        
        return mockUp.existsUser(loginBean.getUsername(), loginBean.getPassword());
    }
    
}
