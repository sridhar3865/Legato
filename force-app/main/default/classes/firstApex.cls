public class firstApex {
    public static void Maptest() {
        Map<string,string>sdept=new Map<string,string>();
        sdept.put('D01','MCA');
        sdept.put('D02','MBA');
        sdept.put('D03','MSC');
        sdept.put('D04','CA');
        system.debug(sdept);
        system.debug('dept is:'+sdept.get('D01'));
        system.debug('dept keyset are:'+sdept.keyset());
        system.debug('values are:'+sdept.values());
        integer s= sdept.size();
        system.debug('Map size :'+s);
        
        Map<string,string> sdept1 =sdept.clone();
        system.debug('clone values are:'+sdept1.values());
        sdept1.clear();
        system.debug('clear:'+sdept1.values());
    }
}