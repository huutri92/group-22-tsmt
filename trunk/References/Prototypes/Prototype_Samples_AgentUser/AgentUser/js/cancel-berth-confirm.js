/*
 * Ext JS Library 1.1
 * Copyright(c) 2006-2007, Ext JS, LLC.
 * licensing@extjs.com
 * 
 * http://www.extjs.com/license
 */

Ext.onReady(function(){
	
	Ext.get('cancelBooking').on('click', function(e){
        Ext.MessageBox.show({
           title: 'Cancel Confirmation',
           msg: '<div align=center>Are you sure you want to cancel this Berth Booking with all Information?</div>',
           width:300,
           buttons: Ext.MessageBox.OKCANCEL,
           multiline: false,
           fn: confirmOK,
           animEl: 'reject'
       });
    });

    


    function showResult(btn){
        Ext.example.msg('Button Click', 'You clicked the {0} button', btn);
    };

    function showResultText(btn, text){
       //Ext.example.msg('Button Click', 'You clicked the {0} button and entered the text "{1}".', btn, text);
	   //alert(btn);
    };
});
