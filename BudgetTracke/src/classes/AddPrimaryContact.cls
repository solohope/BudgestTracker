public class AddPrimaryContact implements Queueable {
    
    private Contact c;
    private String state;
    
    public AddPrimaryContact(Contact c, String state){
        this.c = c;
        this.state = state;
    }
   
     public void execute(QueueableContext context) {
         List<Account> SamestateAccount = [SELECT ID, Name ,(Select id,FirstName,LastName from contacts ) FROM ACCOUNT WHERE BillingState = :state LIMIT 200];
         List<Contact> contact = new List<Contact>();
         
         for (Account acc:SamestateAccount)
         {
                 Contact cont = c.clone(false, false, false, false); // Contact();//.clone(false,false,false,false);
                 cont.AccountId =  acc.id;
                 contact.add( cont );
         }
         
         if(contact.size() >0 )
         {
             insert contact;
         }
     }

}