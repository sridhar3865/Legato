public class CreateContactcls {
    
    public static string createcontact(Contact contObj){
        System.debug('contact::'+contObj.firstName);
        insert contObj;
        return contObj.Id;
    }

}