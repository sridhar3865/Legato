trigger CarTrigger on Car__c (before insert, before Update, before Delete, After insert, After Update, After Delete, After UnDelete) {

If(Trigger.isbefore && (Trigger.IsInsert || Trigger.IsUpdate)) {

CarController99.createARecord(Trigger.New, Trigger.Old);

}

}