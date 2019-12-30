trigger ClosedOpportunityTrigger on Opportunity (after insert,before update) {
    list<task> taskList = new list <task>();
    for(opportunity op : trigger.new) {
    if(op.stageName=='closed won')
    {
        task ts = new task();
        ts.whatId= op.id;
        ts.Status = 'normal';
        ts.Priority = 'high';
        ts.Subject = 'Follow Up Test Task';
        taskList.add(ts);
    }
    
        }
    insert taskList;
}