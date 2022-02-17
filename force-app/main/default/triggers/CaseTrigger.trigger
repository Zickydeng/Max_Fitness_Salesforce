trigger CaseTrigger on Case (before insert) {
    if(Trigger.IsInsert && Trigger.isBefore)
        CaseTriggerHandler.limitNoOfCases(Trigger.New);  

}