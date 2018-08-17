public with sharing class clsController{

    public List<Contact> contacts {get; set;}
    
    public clsController(){
        contacts = [Select Id, name, email from contact limit 10];
    
    }
    
    public void save(){
        update contacts;
    }    
 
}