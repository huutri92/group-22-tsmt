function LogoffLoader(logoffURL)
{
	if(logoffURL != undefined)
	{
		this._logoffURL = logoffURL;
	}
}
LogoffLoader.prototype._logoffURL = "";
LogoffLoader.prototype._request = undefined;
LogoffLoader.prototype.logoff = function()
{
	this._request = this._getXMLHTTPRequest();
	var _this = this;
	this._request.onreadystatechange = function(){_this._onData()};
	this._request.open("GET", this._generateLogoffURL(), true);
	this._request.send(null);
}
LogoffLoader.prototype._generateLogoffURL = function()
{
	return this._logoffURL;
}
LogoffLoader.prototype._onData = function()
{
	if(this._request.readyState == 4)
	{
		delete this._request;
	}
}
LogoffLoader.prototype._getXMLHTTPRequest = function()
{
	var xmlHttp;
	try
	{
		xmlHttp = new ActiveXObject("Msxml2.XMLHttp");
	}
	catch(e)
	{
		try
		{
			xmlHttp = new ActiveXObject("Microsoft.XMLHttp");
		}
		catch(e2)
		{
		}
	}
	
	if(xmlHttp == undefined && (typeof XMLHttpRequest != 'undefined'))
	{
		xmlHttp = new XMLHttpRequest();
	}
	
	return xmlHttp;
}