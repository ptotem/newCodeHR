
function initHTMLAppender(parent, html) {
	for(var i=0, length=html.length; i < length; i++)
        appendHTML(parent, html[i]);
}

function appendHTML(parent, html) {
    var thisElem = $(html.type, html.attributes).appendTo(parent)
    if(html['children'] != undefined) {
    	initHTMLAppender(thisElem, html['children']);
    } 
}
