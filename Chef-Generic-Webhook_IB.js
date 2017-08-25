/** Inbound IB to parse the information coming from a Chef Automate Generic Webhook.  Link to Chef Notifier documentation for formatting instructions.
*   http://chef-web-docs-notify.s3-website-us-west-2.amazonaws.com/config_rb_delivery.html#notifier-settings
*/

var data;

/**
 * Parse incoming data
 *
 * Data is passed into an inbound integration as JSON in the request
 * body.
 *
 * The following code snippets show how to retrieve these values and set them to the properties in the xMatters Form.
 * 
 * The trigger object is a built-in object that you can use to populate an xMatters form
 * when you initiate an event.  You can set each property individually (see line trigger.properties.failure_snippet = data.failure_snippet;).
 * 
 * Or if the properties are in the correct JSON format you can set the incoming data directly to all of the properties at
 * once (see line trigger.properties = data) .
 */


data = JSON.parse(request.body);
//trigger.properties.failure_snippet = data.failure_snippet;

trigger.properties = data

// Define recipients
var recipients = [];
// Add a recipient targeting a user or group
recipients.push({
    'targetName': 'chef'
});

trigger.recipients = recipients;

// Post trigger to form
form.post(trigger);


