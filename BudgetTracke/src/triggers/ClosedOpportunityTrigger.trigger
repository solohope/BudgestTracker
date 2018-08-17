trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    
    List <Task> newTask = new List<Task>();
    
    for(Opportunity a : [SELECT  Id,  StageName FROM Opportunity
                         WHERE Id IN: Trigger.New AND
                         StageName = 'Closed Won'Limit 200]){
        
        newTask.add(new Task(Subject = 'Follow Up Test Task', WhatId = a.Id
                            ));
                           
    }
    
    insert newTask;
    

}