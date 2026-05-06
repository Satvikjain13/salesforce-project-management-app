public class SetBasic {
    public static void practiceSet(){
        Set<String> cities = new Set<String>();
        cities.add('Indore');
        cities.add('Delhi');
        cities.add('Indore');
        cities.add('Mumbai');
        cities.add('Delhi');
        
        for(String s : cities){
            System.debug(s);
        }
    }
    public static void collectAccountIds(){
        List<Contact> conList = [SELECT AccountId FROM Contact];
        
        Set<Id> accountIds = new Set<Id>();
        
        for(Contact con : conList){
            if(con.AccountId != null){
                accountIds.add(con.AccountId);
            }
        }
        for(Id i : accountIds ){
            system.debug(i);
        }
    }

}