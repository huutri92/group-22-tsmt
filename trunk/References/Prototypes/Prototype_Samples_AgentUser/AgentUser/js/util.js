function setTabIndex(){
//alert('setting tab');
	try {
	   for(i=0; i<document.forms[0].elements.length; i++){
	     if (document.forms[0].elements[i].readOnly == false)
		 {
		   try {
		    document.forms[0].elements[i].focus(); 
		     break;
		    } catch(error) {}       
		 }
	   } 
	 } catch (error) {}
}