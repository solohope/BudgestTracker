public class AccountProcessor {
    
    @future
    public static void countContacts(List<Id> recordId){
        List<Account> account = [Select Id, Number_of_Contacts__c, (SELECT Id FROM Contacts) FROM Account Where Id IN :recordId];
      // process account records to do awesome stuff
     
        for(Account acct: account){
            List<Contact> contsinAcct = acct.Contacts;
            acct.Number_of_Contacts__c = contsinAcct.size();           
        }
        
        update account;
        
    }

}