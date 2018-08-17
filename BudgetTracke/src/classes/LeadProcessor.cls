global class LeadProcessor implements Database.Batchable<sObject>, Database.Stateful{
    
    // instance member to retain state across transactions
    global Integer recordsProcessed = 0;
    global Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'SELECT ID, LeadSource FROM Lead' 
        );
    }
    global void execute(Database.BatchableContext bc, List<Lead> scope){
        // process each batch of records
		List<Lead> leads = new List<Lead>();
        for (Lead lead : scope) {
            
                lead.LeadSource = 'Dreamforce';
                // add contact to list to be updated

                recordsProcessed = recordsProcessed + 1;
            
        }
        update leads;
    }    
    global void finish(Database.BatchableContext bc){
        System.debug(recordsProcessed + ' records processed. Cool!');

    }    

}