# bloc-analytics
An analytics app to track events on a website.

Allows developers to capture incoming API requests and uses JavaScript to capture client-side events.

JS snippet:
var blocmetrics = {};
	blocmetrics.report = function(eventName){
		var event = {event: { name: eventName }};

	    var request = new XMLHttpRequest();
	    request.open("POST", "http://localhost:3000/api/events", true);
	    request.setRequestHeader('Content-Type', 'application/json');
	    request.send(JSON.stringify(event));

	};
