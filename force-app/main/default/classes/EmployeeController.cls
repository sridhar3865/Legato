public class EmployeeController {

public String Name{get;set;}
public String EmpID{get;set;}
public String FatherName{get;set;}
public String MobileNumber{get;set;}
public String Address{get;set;}
public String Designation{get;set;}
public String Experiance{get;set;}
public String Email{get;set;}
public String LaunchDate{get;set;}

public EmployeeController() {

system.debug('inside method');

}

public void doINSERT() {


System.debug('   inside the method    ');
 Employee__c E = new Employee__c();


 if(Name!= null && Name!='') {
    E.Name = Name;
}
 
 if(EmpID!=null ){
E.EmpID__c = Decimal.valueOf (EmpID);
}
 
 if(FatherName!=null && FatherName!=''){
   E.FatherName__c = FatherName;
 }

//if(MobileNumber!=null ){
//E.MobileNumber__c = Decimal.valueOf (MobileNumber);
//}

if(MobileNumber!=null && MobileNumber!=''){
  E.MobileNumber__c = MobileNumber;
}

if(Address!=null && Address!=''){
  E.Address__c = Address;
}

 if(Designation!=null && Designation!=''){
   E.Designation__c = Designation;
 }
 
 if(Experiance!=null){
  E.Experiance__c = Decimal.valueOf(Experiance);
}

 if(Email!=null && Email!=''){
   E.Email__c = Email;
 }

 //if(LaunchDate!=null && LaunchDate!=''){
 //  E.LaunchDate__c = Decimal.valueOf(LaunchDate);
 //}

INSERT E;

}

}