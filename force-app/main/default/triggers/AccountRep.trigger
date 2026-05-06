trigger AccountRep on Account (after update) {
	Set<Id> ownerIds = new Set<Id>();
    List<Account> accToUpdate = new List<Account>();

    for (Account acc : Trigger.new) {
        Account oldAcc = Trigger.oldMap.get(acc.Id);

        if (acc.OwnerId != oldAcc.OwnerId) {
            ownerIds.add(acc.OwnerId);
        }
    }

    Map<Id, User> userMap = new Map<Id, User>(
        [SELECT Id, Name FROM User WHERE Id IN :ownerIds]
    );

    for (Account acc : Trigger.new) {
        Account oldAcc = Trigger.oldMap.get(acc.Id);

        if (acc.OwnerId != oldAcc.OwnerId) {
            Account updatedAcc = new Account(
                Id = acc.Id,
                Account_Rep__c = userMap.get(acc.OwnerId).Name
            );
            accToUpdate.add(updatedAcc);
        }
    }
    if (!accToUpdate.isEmpty()) {
        update accToUpdate;
    }
}