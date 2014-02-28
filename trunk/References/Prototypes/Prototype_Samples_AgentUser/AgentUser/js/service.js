function loadService() {
    var service = document.mainForm.service;
    var url = service.options[service.selectedIndex].value;
    if (url != '')
        eval(url);
}
    
function changeDisplay() {
    document.mainForm.service.disabled = true;
    document.mainForm.submit();
}    

// load service direct in case of no agent registered (WA : without agent)
function servWA(gatewayURL)
{
    var win = window;
    if(window.self!=window.top)
        win = window.top
    var selectedCustomer = win.document.getElementById('selectedCustomer');
    win.frames["contentFrame"].location.href = gatewayURL;
    if(selectedCustomer)
        selectedCustomer.innerHTML = "";
}
    
// load service direct in case of one agent registered
function serv(gatewayURL,agentCode,agentType,agentTypeDesc)
{
    var win = window;
    if(window.self!=window.top)
        win = window.top
    var selectedCustomer = win.document.getElementById('selectedCustomer');
    var gURL = gatewayURL + "&agentCode=" + agentCode + "&agentType=" + agentType;
    win.frames["contentFrame"].location.href = gURL;
    if((agentCode!=null) && (agentCode!="") && (agentCode!="-1"))
      selectedCustomer.innerHTML = agentTypeDesc;
    else   
       selectedCustomer.innerHTML = "";
}    
     
function invalidGW(msg)
{
alert(" invalide gateway for service of type " + msg);
}

function invalidAgent()
{
alert(" Agent code is not defined \n please contact you administrator");
}
  
// check list of agents registered with the current service
function checkA(serviceId,url)
{    
    var win = window;    
    if(window.self!=window.top)
        win = window.top;
    var selectHidden = win.document.getElementById('s_'+serviceId+"_h");
    if((!selectHidden) ||
       (selectHidden.value==""))
    {   
        var queryString = "?serviceId=" + serviceId + "&pageURL=" + url ;
        var popupWindow = window.open("showAgentList.do" + queryString,"test","left=300,top=300,height=170,width=330,status=no,toolbar=no,scrollbars=no");
        popupWindow.focus();
    }
    else
    {
        var agentDetails = win.document.getElementById('s_'+serviceId+"_h").value;
        agentDetails = agentDetails.split(",");
        serv(url,agentDetails[0],agentDetails[1],agentDetails[2]);
    }
}

function removeSelection(currentId)
{
    alert(" Selection of agent has been removed ");
    document.getElementById(currentId+"_A").href = "#";
    document.getElementById(currentId+"_h").value = "";
    document.getElementById(currentId).style.background = "";
    document.getElementById(currentId+"_A").style.visibility="hidden";
}
