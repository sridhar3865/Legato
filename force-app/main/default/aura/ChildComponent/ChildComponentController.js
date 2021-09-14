({
handlekeyUp : function(component, event, helper) {
       
        var cmpEvent = component.getEvent("sampleCmpEvent");
        //Set event attribute value
        cmpEvent.setParams({"message" : component.get("v.childToParent")});
        cmpEvent.fire();
        }
})