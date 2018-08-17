public class contactSearch {
    //The Apex class must be called 'ContactSearch' and be in the public scope.
	//The Apex class must have a public static method called 'searchForContacts'.
	//The 'searchForContacts' method must accept two incoming strings as parameters, find any contact that has a last name matching the first,
	// and mailing postal code matching the second string. The method should return a list of Contact records with at least the ID and Name fields.
	//The return type for 'searchForContacts' must be 'List<Contact>'.
	
    public static List<Contact> searchForContacts(String lastname, String mailingPCode){
        
        List<Contact> listContacts = [SELECT ID,Name FROM Contact WHERE (LastName =:lastname AND MailingPostalCode = :mailingPCode)];
                                                                     
        return listContacts;                                                            
         
        
    }
}