 
Ext.onReady(function(){
    var Swin;
    var onlySearchButtons;
	
	onlySearchButtons = YAHOO.util.Dom.getElementsByClassName("deleteItemDialog");
	for (i = 0; i < onlySearchButtons.length; i++){
		var onlySearchBttns = onlySearchButtons[i];
		var onlySearchBttnIds = onlySearchButtons[i].id;
		var Sbutton = Ext.get(onlySearchBttnIds);
		
		Sbutton.on('click', function(){
			Ext.MessageBox.show({
			           title: 'Delete Confirmation',
			           msg: '<div align=center>Are you sure want to delete selected item?</div>',
			           width:300,
			           buttons: Ext.MessageBox.OKCANCEL,
			           multiline: false,
			           fn: confirmOK,
			           animEl: 'reject'
			});
		});
	}

});

function closeDialog(){
				//alert("close");
			}