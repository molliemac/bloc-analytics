## Bloc-Analytics
An analytics app to track events on a website.
![screen shot 2017-11-12 at 9 58 52 pm](https://user-images.githubusercontent.com/19556195/32712294-aa03e5f4-c7f8-11e7-8cb4-9971d33d9384.png)

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

![screen shot 2017-11-12 at 9 59 10 pm](https://user-images.githubusercontent.com/19556195/32712295-aa31b2d6-c7f8-11e7-82f7-e8e8b4d969c3.png)
