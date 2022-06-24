package it.unica.scarpex.model;

/**
 *
 * @author alessandrofloris
 */
public interface LoginDao {

    boolean authenticate(LoginBean loginBean);
    
}
