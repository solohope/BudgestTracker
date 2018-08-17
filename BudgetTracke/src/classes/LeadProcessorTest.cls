@IsTest

public class LeadProcessorTest {
    
    //Setup
    @testSetup
    
    static void setup() {
        
        List<Lead> leads = new List<Lead>();
        
        for (Integer i=0; i<200;i++){            
            leads.add(new Lead(FirstName='testLead'+i, LastName='lastname', Company='Lead', Status='Open - Not Contacted'));
        }
        insert leads;         
        }
	 
    static testmethod void test(){
        
        Test.startTest();
        LeadProcessor leadpro = new LeadProcessor();
        Id batchId = Database.executeBatch(leadpro);
        
        Test.stopTest();
        //after the testing stops, assert records were updated properly
        
       // System.assertEquals(200, [select count() from lead where LeadSource = 'Dreamforce']);
        
        
    }
	
    

}