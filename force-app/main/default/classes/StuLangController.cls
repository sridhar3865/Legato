Public Class StuLangController{

    public PageReference cancel() {
        return null;
    }


    public PageReference create() {
        return null;
    }


    public PageReference save() {
        return null;
    }


Public StuLang__c StuLang{get;set;}

Public StuLangController() {

StuLang = new StuLang__c();

}

Public void doinsert() {

Insert StuLang;

}

}