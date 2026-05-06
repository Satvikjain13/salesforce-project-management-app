trigger AuthorTrigger on Author__c (before insert, before update, before delete) {

    if (Trigger.isBefore && Trigger.isInsert) {
        for (Author__c auth : Trigger.new) {
            auth.Description__c = 'Author Created by ' + 
                UserInfo.getFirstName() + 
                ' on ' + System.now();
        }
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        for (Author__c auth : Trigger.new) {
            auth.Description__c = 'Author Last Updated by ' + 
                UserInfo.getFirstName() + 
                ' on ' + System.now();
        }
    }

    if (Trigger.isBefore && Trigger.isDelete) {
        for (Author__c auth : Trigger.old) {
            auth.addError('You Cannot Delete the Author Record');
        }
    }
}