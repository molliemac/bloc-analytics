## Bloc-Analytics
An analytics app to track events on a website.
!["Homepage"](bloc-analytics/app/assets/images/Screen Shot 2017-11-12 at 9.58.52 PM.png)

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

## Tech Details
Bloc Analytics is written entirely in **Ruby on Rails** and utilizes the **Devise** gem to handle user authentication and **Chartkick** to provide a library for transforming data into a chart/graph format.

!["Charts"](bloc-analytics/app/assets/images/Screen Shot 2017-11-12 at 9.59.10 PM.png)
