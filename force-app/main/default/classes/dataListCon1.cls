public class dataListCon1 {
 
    List<Account> accounts;
 
    public List<Account> getAccounts() {
        if(accounts == null) accounts = [SELECT Account.Type FROM Account LIMIT 10];
        return accounts;
    }
 
}