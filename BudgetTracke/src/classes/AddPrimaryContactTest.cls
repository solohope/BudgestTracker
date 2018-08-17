@isTest
public class AddPrimaryContactTest {
    
    @isTest
    static void SetUp(){
        
        List<Account> TestAcc = new List <Account>();
        for(Integer i=0; i<50; i++){
            
            TestAcc.add(new Account(BillingState= 'CA', name = 'Test' + i));
        }
        for(Integer j=0; j<50; j++){
            
            TestAcc.add(new Account(BillingState= 'NY', name = 'Test' + j));
        }
        insert TestAcc;
             
        Contact cont = new Contact();
        cont.FirstName = 'solol';
        cont.LastName = 'Ghe1';
        insert cont;
        String state = 'CA';
        
        
        AddPrimaryContact apc = new AddPrimaryContact(cont, state);
        Test.startTest();
        	System.enqueueJob(apc);
        Test.stopTest();
        
                        
        
    }

}