public class ListLearning {
    public static void practiceList(){
        List<String> names = new List<String>();
        names.add('Satvik');
        names.add('Sumit');
        names.add('Siddharth');
        names.add('Aditya');
        names.add('Shiv');
        System.debug('Total Names : '+names.size());
		System.debug('Is Aditya present: ' + names.contains('Aditya'));  
        Integer index = names.indexOf('Shiv');
        System.debug(index);
        if(index != -1){
            names.remove(index);
        }
        //System.debug(names.get(1));
        for(Integer i=0;i < names.size();i++){
            System.debug('Index '+i+': '+names[i]);
        }
    }
    
    
}