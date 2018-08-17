public class ContactAndLeadSearch {
    //The Apex class must be called 'ContactAndLeadSearch' and be in the public scope.
	//The Apex class must have a public static method called 'searchContactsAndLeads'.
    //Because SOSL indexes data for searching, you must create a Contact record and Lead record 
    //before checking this challenge. Both records must have the last name 'Smith'. 
    //The challenge uses these records for the SOSL search.
    //The return type for 'searchContactsAndLeads' must be 'List<List< SObject>>'
    //The 'searchContactsAndLeads' method must accept an incoming string as a parameter, 
    //find any contact or lead that matches the string as part of either the first or 
    //last name and then return those records.
    
    public static List<List<Sobject>> searchContactsAndLeads(String lname){
        //Sting lastnme = lname;
        
        List<List<sObject>> searchList = [FIND '+lname' IN NAME FIELDS
                   RETURNING Lead(FirstName,LastName),Contact(FirstName,LastName)];
        
        Lead[] searchLeads = (Lead[])searchList[0];
        Contact[] searchContacts = (Contact[])searchList[1];   
        
        return searchList;
    }

}