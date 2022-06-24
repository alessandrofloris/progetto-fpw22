package it.unica.scarpex.utils;

public class Validator {

    
    /*
        @param username
        @param password
        
        @return restituisce un oggetto del tipo ValidatorResponse, che informa se i dati 
                       sono corretti o meno, e se non lo sono restituisce un messaggio.
    */
    public static ValidatorResponse validateLoginData(String username, String password) {
        
        ValidatorResponse response = new ValidatorResponse();
        
        //controlla che i campi non siano nulli
        if(username == null || password == null) {
            response.setError();
            return response;
        } 
        
        /*Controllo sull username*/
        
        //l'username deve contenere tra i 6 e i 12 caratteri
        if(username.length() < 6 || username.length() > 12) {
            response.setError();
            response.createMessage("username", "La lunghezza dell'username deve essere compresa tra i 6 e i 12 caratteri!");
        }
        
        //l'username puo contenere solo [A-Z][a-z][0-9][_@#]
        final String usernameRegex = "^[a-zA-Z0-9]*$";
        if(!username.matches(usernameRegex)) {
            response.setError();
            response.createMessage("username", "L'username puo contenere solo caratteri alfanumerici");
        }
        
        
        /*Controllo sulla password*/
        
        //la password deve contenere tra i 6 e i 16caratteri
        if(password.length() < 6 || password.length() > 12) {
            response.setError();
            response.createMessage("password", "La lunghezza della password deve essere compresa tra i 6 e i 2 caratteri!");
        }
        
        //la password puo contenere solo [A-Z][a-z][0-9][_@#]
        final String passwordRegex = "^[a-zA-Z0-9_@#]*$";
        if(!password.matches(passwordRegex)) {
            response.setError();
            response.createMessage("username", "L'username puo contenere solo caratteri alfanumerici o i simboli '@ # _'!");
        }
        
        //la password deve contenere almeno un numero, almeno una lettera maiuscola, una minuscola e un carattere speciale
        //...
        
        return response;
    }
 
       
}
