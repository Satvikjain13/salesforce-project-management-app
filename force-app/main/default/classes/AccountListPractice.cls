public class AccountListPractice {
    public static void createAndPrintAccounts(){
        List<Account> accList = new List<Account>();
        
        Account acc1 = new Account();
        acc1.Name='Alpha';
        acc1.Phone='9039779133';
        
        Account acc2 = new Account();
        acc2.Name='Beta';
        acc2.Phone='9752358609';
        
        Account acc3 = new Account();
        acc3.Name='Gama Pahelwan';
        acc3.Phone='8305169201';
        
        accList.add(acc1);
        accList.add(acc2);
        accList.add(acc3);
        
        
        for(Account acc:accList){
            if(acc.Name.length() > 5){
               System.debug('Account Name : ' + acc.Name +'Phone Number : '+ acc.Phone);
               System.debug('Inserted Account ID: ' + acc.Id);
            }
        }
       insert accList;
        
    }

}