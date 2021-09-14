Public Class StudController{

Public Stud__c Stud{get;set;}

Public StudController() {

Stud = new Stud__c();

}

Public void doinsert() {

Insert Stud;

}

}