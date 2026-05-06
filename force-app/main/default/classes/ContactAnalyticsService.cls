public class ContactAnalyticsService {
    public static void getGmailContacts(){
        List<Contact> gmailContacts = [SELECT Name, Email FROM Contact WHERE Email LIKE '%@gmail.com'];
        if(gmailContacts.isEmpty()){
            System.debug('No Gmail contacts found');
        }
        for(Contact con : gmailContacts){
            System.debug('Contact: '+ con.Name + ' | Email: '+con.Email);
        }  
    }
    public static void getTopImportantContacts(){
        List<Contact> importantContact = [SELECT Name , Email FROM Contact WHERE Email LIKE '%@gmail.com' AND Name LIKE 'S%' ORDER BY Name DESC LIMIT 3];
        if(importantContact.isEmpty()){
    	System.debug('No important contacts found');
		}
        for(Contact con : importantContact){
            System.debug('Top Contact: '+ con.Name +' | Email: '+con.Email);
        }
    }
    public static void getContactsWithAccount(){
        List<Contact> contactWithAccount = [SELECT Name,Account.Name FROM Contact];
         if(contactWithAccount.isEmpty()){
       		 System.debug('No contacts with accounts found');
    	}
        for(Contact con : contactWithAccount){
            if(con.Account != null){
                System.debug('Contact: '+ con.Name +' | Account: '+con.Account.Name);
            }
            
        }  
    }
    public static void getAccountsWithContacts(){
        List<Account> accountsWithContacts = [SELECT Name, (SELECT Name FROM Contacts) FROM Account];
        if(accountsWithContacts.isEmpty()){
       		 System.debug('No contacts with accounts found');
    	}
        for(Account acc : accountsWithContacts){
            System.debug('Account: '+acc.Name);
            for(Contact con : acc.Contacts){
                System.debug('Contact: '+con.Name);
            }
            
        }
    }

}