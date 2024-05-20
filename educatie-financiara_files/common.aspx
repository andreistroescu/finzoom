
var rootFolder="/";
var defVal = "Търсене";

function getObjectByID(objID)
    {   
       if(document.layers)
       {
          return document.layers[objID];      
       }
       else
       {
          return document.getElementById ? document.getElementById(objID) : document.all[objID];
       }
    }
function site_search()
{   
   var q = getObjectByID("inp_search")
   if(q.value.trim() == "")
   {      
      q.focus();
      return false;
   }
   var url = '/tursene/';
   url += "?cx=003940726478455826526:mql_xc3ypyy&sa=Търсене&cof=FORID:9&q=" + q.value;
   location.href = url;
   return true
}

var LogAction = function (view,action, template, parameters) {
    var url='/'+"logaction.aspx?view="+view+"&action="+action+"&template="+template+"&s="+parameters
    $.ajax(url)
    return true;
}
var LogDetails = function (view,template,parameters) { 
 if (typeof parameters === 'undefined' || parameters === null) {
        return LogAction("None","Details",template, parameters); 
    }   
    return  LogAction(view,"Details",template, parameters); 
}
var LogResult = function (template,parameters) { 
    return  LogAction("","Offers",template, parameters); 
}