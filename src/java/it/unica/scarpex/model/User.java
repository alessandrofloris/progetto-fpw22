package it.unica.scarpex.model;

/**
 * Serve la password nel model dell'utente
 * 
 * serve una error page?
 * 
 */

public class User {
    
    private String username;
    private String nome;
    private String cognome;
    private String citta;
    private String email;
    private String password;
    
    public User() {
    }
   
    public User(String username, String nome, String cognome, String citta, String email, String password) {
        this.username = username;
        this.nome = nome;
        this.cognome = cognome;
        this.citta = citta;
        this.email = email;
        this.password = password;
    }
    
    public String getPassword() {
        return this.password;
    }
   
    public String getUsername() {
        return this.username;
    }
    
    public String getNome() {
        return this.nome;
    }
    
    public String getCognome() {
        return this.cognome;
    }
    
    public String getCitta() {
        return this.citta;
    }
    
    public String getEmail() {
        return this.email;
    }
    
}
