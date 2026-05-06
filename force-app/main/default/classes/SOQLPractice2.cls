public class SOQLPractice2 {
    public static void fetchGmailContacts(){
        List<Contact> conList = [SELECT Name,Email FROM Contact WHERE Email LIKE '%@gmail.com' AND Email != null];
        for(Contact con : conList){  
            System.debug('Contact: ' +con.Name + ' | Email: ' +con.Email);
        }
    }
    public static void fetchFilteredContacts(){
        List<Contact> conList = [SELECT Name,Email FROM Contact WHERE Email LIKE '%@gmail.com' AND Name LIKE 'A%' LIMIT 5];
        
        for(Contact con : conList){
            System.debug('Contact : '+con.Name +' | Email : '+con.Email);
        }
        System.debug('Total fetched : '+conList.size());
    }
    public static void fetchSortedContacts(){
        List<Contact> conList = [SELECT Name,Email FROM Contact WHERE Email LIKE '%@gmail.com' AND Name LIKE 'S%' ORDER BY Name DESC LIMIT 3];
        for(Contact con : conList){
            System.debug('Contact : '+ con.Name +' | Email : ' + con.Email);
        }
        if(!conList.isEmpty()){
            System.debug('First Contact: '+conList[0].Name);
        }
    }
}