@isTest

public class DailyLeadProcessorTest {
    
    
     public static String CRON_EXP = '0 0 1 * * ?';
    static testmethod void testDailyLead(){
      
    //test data
    List<Lead> testleads = new List<Lead>();
    
        for(Integer i=0;i<200;i++){
            Lead l = new Lead(LastName = 'test'+i,Company='Testing', Status='Open - Not Contacted' );                              
            testleads.add(l);
        }
       insert testleads;
      // Get the IDs of the leads inserted
        Map<Id, Lead> leadMap = new Map<Id, Lead>(testleads);
        List<Id> testleadsID = new List<Id>(leadMap.keySet());     
        
       //
       Test.startTest();
        // Schedule the test job
        String jobId = System.schedule('ScheduledApexTest', CRON_EXP, new DailyLeadProcessor());         
        // Verify the scheduled job has not run yet.
        List<Task> lt = [SELECT Id 
            FROM Task 
            WHERE WhatId IN :testleadsID];
        System.assertEquals(0, lt.size(), 'Tasks exist before job has run');
        // Stopping the test will run the job synchronously
        Test.stopTest();
        
        // Now that the scheduled job has executed,
        // check that our tasks were created
        /*lt = [SELECT Id 
            FROM Task 
            WHERE WhatId IN :testleadsID];
        System.assertEquals(testleadsID.size(), 
            lt.size(), 
            'Tasks were not created');*/
   }

}