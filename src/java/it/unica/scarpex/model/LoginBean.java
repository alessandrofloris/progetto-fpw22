
package it.unica.scarpex.model;

import it.unica.scarpex.utils.ValidatorResponse;
import it.unica.scarpex.utils.Validator;

/**
 *
 * @author alessandrofloris
 */
public class LoginBean {
    
    private final String username;
    private final String password;
    
    public LoginBean(String username, String password) {
        this.username = username; 
        this.password = password;
    }
    
    public ValidatorResponse validate() {
        return Validator.validateLoginData(this.getUsername(), this.getPassword());
    }
    
    public String getPassword() {
        return this.password;
    }
    
    public String getUsername() {
        return this.username;
    }
    
}
