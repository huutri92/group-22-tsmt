 
Ext.onReady(function(){
    var Swin;
    var onlySearchButtons;
	
	onlySearchButtons = YAHOO.util.Dom.getElementsByClassName("openDialogSearchGeneral");
	for (i = 0; i < onlySearchButtons.length; i++){
		var onlySearchBttns = onlySearchButtons[i];
		var onlySearchBttnIds = onlySearchButtons[i].id;
		
		title = onlySearchBttns.getAttribute("dialogtitle");
		
		var Sbutton = Ext.get(onlySearchBttnIds);
		
		Sbutton.on('click', function(){
			if(!Swin){
				title = onlySearchBttns.getAttribute("dialogtitle");
				Swin = new Ext.Window({
					el:'search-win-general',
					layout:'fit',
					width:800,
					height:400,
					closeAction:'hide',
					plain: true,
					title:title,
					modal:true,
					items: new Ext.Panel({
						el: 'search-tabs-general',
						border:false
					}),
	
					buttons: [{
						text: 'Close',
						handler: function(){
							Swin.hide();
						}},
						{text: 'Save',
						handler: function(){
							Swin.hide();
						}
					}]
				});
			}
			Swin.show(this);
			
			
			
			var title = onlySearchBttns.getAttribute("dialogtitle");
			var framelink = onlySearchBttns.getAttribute("link");
			//YAHOO.util.Dom.get('dialogMainTitle').setAttribute('title','Search Vessels');
			window.searchFrameGeneral.location = framelink;
			
		});
	}
	
	
	
});
function closeDialog(){
				//alert("close");
			}