trigger AccountRepresentative on Account (after update) {
    Set<Id> ownerIds = new Set<Id>(); 
    for(Account acc : Trigger.new){
        Account oldAccount = Trigger.oldMap.get(acc.Id);
        if(acc.OwnerId != oldAccount.OwnerId){
            ownerIds.add(acc.OwnerId);
        }
    }
   Map<Id, User> userMap = new Map<Id, User>([SELECT Id, Name FROM User WHERE Id IN :ownerIds]);
    List<Account> accToUpdate = new List<Account>();
    for(Account acc : Trigger.new){
        Account oldAcc = Trigger.oldMap.get(acc.Id);
        if(acc.OwnerId != oldAcc.OwnerId){
            String ownerName = userMap.get(acc.OwnerId).Name;
            Account a = new Account();
           
            a.Id = acc.Id;
			a.Account_Rep__c = ownerName;
            accToUpdate.add(a);
        }
    }
    if(!accToUpdate.isEmpty()){
    update accToUpdate;
}
}