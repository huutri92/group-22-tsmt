 
Ext.onReady(function(){
    var Swin;
    var onlySearchButtons;
	
	onlySearchButtons = YAHOO.util.Dom.getElementsByClassName("openDialogRotation");
	for (i = 0; i < onlySearchButtons.length; i++){
		var onlySearchBttns = onlySearchButtons[i];
		var onlySearchBttnIds = onlySearchButtons[i].id;
		
		title = onlySearchBttns.getAttribute("dialogtitle");
		
		var Sbutton = Ext.get(onlySearchBttnIds);
		
		Sbutton.on('click', function(){
			if(!Swin){
				title = onlySearchBttns.getAttribute("dialogtitle");
				Swin = new Ext.Window({
					el:'search-win-rotation',
					layout:'fit',
					width:800,
					height:400,
					closeAction:'hide',
					plain: true,
					title:title,
					modal:true,
					items: new Ext.Panel({
						el: 'search-tabs-rotation',
						border:false
					}),
	
					buttons: [{
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
			window.searchFrameRotation.location = framelink;
			
		});
	}
	
	
	
});
function closeDialog(){
				//alert("close");
			}