public class AccountHandler {
    
    //The Apex class must be called 'AccountHandler' and be in the public scope.
    //The Apex class must have a public static method called 'insertNewAccount'.
    //The 'insertNewAccount' method must accept an incoming string as a parameter, 
    //name the account after the parameter, insert it into the system and then return the account record.
    //The 'insertNewAccount' method must also accept an empty string, catch the failed DML and return null.

    public static Account insertNewAccount(String recordName){
        
   try{
            
        Account acct = new Account();
        acct.Name = recordName;
        insert acct;
        return acct;
        }
        
    catch (DmlException e){
        return null;    
        }
    }}