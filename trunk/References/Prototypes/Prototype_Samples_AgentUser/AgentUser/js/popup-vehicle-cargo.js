 
Ext.onReady(function(){
    var Swin;
    var onlySearchButtons;
	
	onlySearchButtons = YAHOO.util.Dom.getElementsByClassName("openDialogSearchVehicle");
	for (i = 0; i < onlySearchButtons.length; i++){
		var onlySearchBttns = onlySearchButtons[i];
		var onlySearchBttnIds = onlySearchButtons[i].id;
		
		title = onlySearchBttns.getAttribute("dialogtitle");
		
		var Sbutton = Ext.get(onlySearchBttnIds);
		
		Sbutton.on('click', function(){
			if(!Swin){
				title = onlySearchBttns.getAttribute("dialogtitle");
				Swin = new Ext.Window({
					el:'search-win-vehicle',
					layout:'fit',
					width:800,
					height:400,
					closeAction:'hide',
					plain: true,
					title:title,
					modal:true,
					items: new Ext.Panel({
						el: 'search-tabs-vehicle',
						border:false
					}),
	
					buttons: [
						{text: 'Save',
						handler: function(){
							Swin.hide();
						}
					},{
						text: 'Close',
						handler: function(){
							Swin.hide();
						}}]
				});
			}
			Swin.show(this);
			
			
			
			var title = onlySearchBttns.getAttribute("dialogtitle");
			var framelink = onlySearchBttns.getAttribute("link");
			//YAHOO.util.Dom.get('dialogMainTitle').setAttribute('title','Search Vessels');
			window.searchFrameVehicle.location = framelink;
			
		});
	}
	
	
	
});
function closeDialog(){
				//alert("close");
			}