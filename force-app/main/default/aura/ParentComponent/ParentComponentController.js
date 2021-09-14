({
	parentComponentEvent : function(component, event, helper) {
        var fromChild = event.getParam('message');
        //set the handler attribute based on event data
        component.set("v.childVariable",fromChild);
		
	}
})