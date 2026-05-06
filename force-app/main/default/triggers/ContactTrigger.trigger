trigger ContactTrigger on Contact (before delete) {
    for(Contact con : Trigger.old){
        if(con.AccountId != null){
            con.addError('Contact associated with account cannot be deleted');
        }
    }
}