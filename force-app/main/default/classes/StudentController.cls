public  with sharing class StudentController {    
    public String Teacher   {get;set;}    
    public String country {get;set;}    
    public String state    {get;set;}    
    public String Name    {get;set;} 
    
    public PageReference ObjInsert() {
        Student__c objins = new Student__c();
        objins.Name=Name;
        objins.Teacherss__c=Teacher;
        objins.Country__c=country;
        objins.State__c=state;
        insert objins;
        
        pagereference ref = new pagereference('/apex/InsertRecCustomObj');
        ref.setredirect(true);
        return ref;
    }
}