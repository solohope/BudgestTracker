public class RandomContactFactory {
    
 public static List<Contact> generateRandomContacts(Integer numContacts, String lastName) {
        List<Contact> conts = new List<Contact>();
        
        for(Integer i=0;i<numContacts;i++) {
            Contact a = new Contact(FirstName='TestContact' + i);
            conts.add(a);
        }
                
        return conts;
    }

}