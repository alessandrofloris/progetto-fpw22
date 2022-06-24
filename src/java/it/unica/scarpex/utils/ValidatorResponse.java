package it.unica.scarpex.utils;

import java.util.List;
import java.util.ArrayList;

public class ValidatorResponse {
    
    private boolean error;
    List<Pair<String,String>> message;
    
    public ValidatorResponse() {
        this.error = false;
        this.message = new ArrayList<>();
    }
    
    public List<Pair<String,String>> getMessages() {
        return this.message;
    }
    
    public void createMessage(String key, String value) {
        Pair pair = new Pair(key, value);
        message.add(pair);
    }
    
    public void setError() {
        this.error = true;
    }
    
    public boolean error() {
        
        return this.error;
    
    }
    
    
}
