public with sharing class DeleteController{    
    public String CId{get;set;}
    
    List <Car__c> dlt = new List<Car__c>();  
      
    public List<Car__c> getCar() {
    
        dlt =[select id,Name,Branch__c,Area__c,CarPrice__c from Car__c];
        
        return dlt;
    }   
    
    Car__c CarDlt = new Car__c();    
    
    public PageReference DoDelete() {
    
        CarDlt=[select Id from Car__c where id =:CId];
        
        Delete CarDlt;
        
        pagereference ref=new pagereference('/apex/Mydelete');
        
        ref.setredirect(true);
        
        return ref;
    }
}