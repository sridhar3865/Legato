public  class CarinfoController {
    public List<Car__c> records{get; set;} 
    public CarinfoController(){ 
        records = [Select Id, Name, CarModel__c, CarOwner__c, CarPrice__c from Car__c];         
    } 
}