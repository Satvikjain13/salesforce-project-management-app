trigger AccountBeforeInsertTrigger on Account (before insert) {
    for(Account acc : Trigger.new){
        acc.Description = 'Account Created :'+acc.Name;
    }
}