@isTest
public class TestRestrictContactByName {
           
//Positive Scenarious
    
    @isTest static void TestInsertRestrictContractByName() {
        //     //create record for test
        Contact c = new Contact(LastName='INVALIDNAME');
        
        //Perform test
        
        Test.startTest();
        
        Database.SaveResult rs= Database.insert(c, false);            
        Test.stopTest();
        
        //verify
        System.assert(!rs.isSuccess());
        System.assert(rs.getErrors().size()>0);
        System.assertEquals('The Last Name "'+c.LastName+'" is not allowed for DML', rs.getErrors()[0].getMessage());
                
        
    }
    
	@isTest static void TestUpdateRestrictContractByName() {
       //create record for test
       Contact c = new Contact(LastName='INVALIDNAME');
        
       //Perform test
       Test.startTest();        
       Database.SaveResult rs= Database.update(c, false);             
       Test.stopTest();
        
        //Verify
        System.assert(!rs.isSuccess());
        System.assert(rs.getErrors().size()>0);
        //System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', rs.getErrors()[0].getMessage());
        
        
        
    }
}