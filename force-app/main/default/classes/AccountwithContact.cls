public class AccountwithContact {
    public static void fetchAccountWithContacts(){
        List<Account> accList = [SELECT Name, (SELECT Name FROM Contacts) FROM Account];
        for(Account acc : accList){
            System.debug('Account :'+acc.Name);
            for(Contact con : acc.Contacts){
                System.debug('Contact :'+con.Name);
            }
        }
    }
    public static void fetchContactsWithAccount(){
        List<Contact> conList = [SELECT Name, Account.Name FROM Contact];
        for(Contact con : conList){
            if(con.Account != null){
              System.debug('Contact:'+ con.Name + ' | Account :'+con.Account.Name);

            }
        }
    }

}