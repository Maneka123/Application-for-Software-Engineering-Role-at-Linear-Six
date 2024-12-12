const { google } = require('googleapis');
const cal = google.calendar({
    version: 'v3', //set version
    auth: 'AIzaSyC-zCYD6kvSHBlarI_nfll6zm6aAXnue2g'
});

// Set calendar api key
const calendar = '85f95be98b80ef6d4c4d82aae4ff6cfcad6d5838ebc9628de289a37f517f7be1@group.calendar.google.com';

// Set start time of query
const startTime = new Date("2024-12-13");

startTime.setHours(6, 0, 0);

//set end time of query
const endTime = new Date("2024-12-13");
endTime.setHours(15, 0, 0);

cal.freebusy.query({
    resource: {
        
        timeMin: new Date(startTime).toISOString(), 
        timeMax: new Date(endTime).toISOString(),
        timeZone: 'Colombo', //set timezone
		
        items: [{ id: calendar }]
    }
}).then((result) => {
    const busy = result.data.calendars[calendar].busy;
	const busyArray = result.data.calendars[calendar].busy;
    const errors = result.data.calendars[calendar].errors;
	
    if (undefined !== errors) {
        console.error('Check this this calendar has public free busy visibility');
    } else if (busy.length !== 0) {
        console.log('Time slot is busy');
        console.log('Array of busy intervals:');
		console.log(busyArray);
    } else {
        console.log('Free');
    }
}).catch((e) => {
    console.error(e);
});