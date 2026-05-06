public class SOQLPractice1 {
    public static void 	fetchAllAccounts(){
        List<Account> accList = [SELECT Name,Phone FROM Account];
        
        for(Account acc : accList){
            System.debug('Account: '+acc.Name+' | Phone: '+acc.Phone);
        }
    }
}