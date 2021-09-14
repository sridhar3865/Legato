Public class CarController99{

Public static void createARecord(List<Car__c> objList, List<Car__c> objOldList) {

for(Car__c objlst : objList){
       for(Car__c oldlst : objOldList){
        
         if(objlst.CarModel__c == oldlst.CarModel__c){
           
           System.debug('equal condition');
           if(objlst.CarModel__c.contains('Phani')){
                objlst.CarModel__c = 'Audi Sridhar';
          }
           else {
               objlst.CarModel__c = 'Car Phani'; 
           }
       } else if(objlst.CarModel__c != oldlst.CarModel__c){   
             System.debug('not equal condition'); 
                 objlst.CarModel__c = 'BMW Sridhar'; 
           }  
     }            
}

}
}