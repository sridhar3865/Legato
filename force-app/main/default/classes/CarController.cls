public class CarController{

 //demo 1

public Car__c Car{get;set;}

public boolean flag {get;set;}

public String currentRecordId = null;

Public Static Id id;

public  Car__c getCar() {

      return Car;
}

public CarController(){

    Car= new  Car__c();  
    
   currentRecordId = ApexPages.CurrentPage().getparameters().get('id');
   if(currentRecordId !=null){
   flag =true;
   
Car = [select id, Name, CarModel__c, CarNumber__c, CarPrice__c, Email__c, CarOwner__c, OwnerNumber__c, Branch__c,

Area__c from Car__c where id =: currentRecordId ];
                                       } 
        else { 
        flag=false;
        
        
        }                               
  
}


 public pageReference doInsert() {
 
 
    System.debug('----- Car.CarModel__c---'+ Car.CarModel__c);
    
 if(Car.CarModel__c!= null && Car.CarModel__c!=''){
     Car.CarModel__c= Car.CarModel__c; 
 }
    
   if(Car.CarNumber__c != null && Car.CarNumber__c!=''){
  Car.CarNumber__c = Car.CarNumber__c;
 }
    
   
   if(Car.CarPrice__c!= null){
 Car.CarPrice__c = Car.CarPrice__c;

 }
 
    if(Car.Email__c!=null && Car.Email__c!=''){
 Car.Email__c = Car.Email__c;
 }
 
 
    if(Car.CarOwner__c!=null && Car.CarOwner__c!=''){
 Car.CarOwner__c = Car.CarOwner__c;
 }
    

   if(Car.OwnerNumber__c!=null && Car.OwnerNumber__c!=''){
 Car.OwnerNumber__c = Car.OwnerNumber__c;
 }
 
   if(Car.Branch__c!=null && Car.Branch__c!=''){
 Car.Branch__c = Car.Branch__c;
 }
 
  
  
  
   if(Car.Area__c!=null && Car.Area__c!=''){
 Car.Area__c = Car.Area__c;
 }
 
    System.debug(' -----  '+Car);
 // if(Car!=null) 
  
  Upsert Car;
 
    
  id = Car.id;
    PageReference pageRef = new PageReference('/apex/CarVfp?id='+id);
        pageRef.setRedirect(true);
        return pageRef;
}  

 

 public pageReference Edit() {
      
      ID id = ApexPages.CurrentPage().getparameters().get('id');
 
        PageReference pageRef = new PageReference('/apex/CarVfp?id='+id);
        pageRef.setRedirect(true);
        return pageRef;
    }  


        
             
public pageReference Cancel() {
        PageReference pageRef = new PageReference('/Home/home.jsp/');
        pageRef.setRedirect(true);
        return pageRef;
    }            

}