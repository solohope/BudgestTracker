@IsTest
public class AccountProcessorTest {
    
    @IsTest
    public static void countContactsTest(){    
        //setup Data
        Account act = new Account();
        act.Name = 'Test Account';
        insert act;
        
        Contact cont1 = new Contact();
        cont1.FirstName = 'Solo';
        cont1.LastName = 'Ghe';
        cont1.AccountId = act.Id;
        insert cont1;
        

        List<Id> AccId = new List<ID>();
        AccId.add(act.Id);
        
        
        //Check
        
        Test.startTest();
         
          AccountProcessor.countContacts(AccId);
        
        Test.stopTest();
                        
        //Verify
        
        Account acc = [SELECT Number_of_Contacts__c FROM Account WHERE Id = :act.Id LIMIT 1];
        System.assertEquals(Integer.valueOf(acc.Number_of_Contacts__c), 1);
        

        }

}