({
	doInit : function(component, event, helper) {
		console.log('default value of nameOfstudent------'+component.get("v.nameOfstudent"));
        component.set("v.nameOfstudent","sri123");
        console.log('default value of nameOfstudent 22 ----'+component.get("v.nameOfstudent"));
        
         var a = 10, b = "Ram", c = "Charan", d =8;
     var e= a + d;
        console.log('a+b@@@@' + (a + b)); //10Ram
        console.log('b+c@@@@' + (b + c)); //"Ram Charan"
        console.log('b+d@@@@' + (a + d)); //a+d@@@18
        console.log('b+d@@@@' + a + d); //a+d@@@108
        console.log('a+d2@@@'+e);
        var stringArray = new Array();
        stringArray[0] = "one";
        stringArray[1] = "two";
        stringArray[2] = "three";
        stringArray[3] = "four";
        console.log('@@@@stringArray'+stringArray);
        var numericArray = new Array(3);
        numericArray[0] = 1;
        numericArray[1] = 2;
        numericArray[2] = 3;
        console.log('@@@@numericArray'+numericArray);
        var mixedArray = new Array(1, "two", 3, "four");
        console.log('@@@@mixedArray'+mixedArray);
        
         if(component.get("v.ageOfstudent") > 30)
        {
         console.log('@@@@age is greater than 30');
        }
        else {
           
            console.log('@@@@age is less than 30');
        }
            for(var i=0; i<=5; i++)
            {
             console.log('@@@@'+i);
            }
        //for (account acc : list)
       
        try {
         numericArray.setmethod();  
          }
        catch(ex){
            console.log('@@@@exption in component'+ex);
        }
        console.log('@@@@afterException');
       // for(var i in component.get("v.numbersList")){
        // }
        },
    onClick2 : function(component, event, helper){
	}
})