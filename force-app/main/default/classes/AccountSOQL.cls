public class AccountSOQL {
    public static void QuerySOQL(){
        List<Account> accList = [SELECT Id,Name,Phone FROM Account];
        for(Account acc : accList){
            System.debug('Account Id : '+acc.Id +'Account Name : '+acc.Name +'Account Phone : '+acc.Phone);
        }
    }
    
    public static void fetchAccount(){
        List<Account> accList = [SELECT Name,Phone FROM Account WHERE Name LIKE 'A%'];
        for(Account acc :accList ){
            if(acc.Phone != null){
                System.debug('Account : '+acc.Name+'| Phone : '+acc.Phone);
            }
        }
        System.debug('Total Accounts: ' + accList.size());
    }

}