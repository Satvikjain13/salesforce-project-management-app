public class AccountHandler {
    public static void beforeInsert(List<Account> accList){
        for(Account acc :accList){
            //acc.Description = 'Created Via Trigger';
        }
    }

}