# The delivery.rb file, located at /etc/delivery/delivery.rb, contains all of the non-default configuration settings used by the Chef Automate. (The default settings are built-in to the Chef Automate configuration and should only be added to the delivery.rb file to apply non-default values.) These configuration settings are processed when the delivery-server-ctl reconfigure command is run, such as immediately after setting up Chef Automate or after making a change to the underlying configuration settings after the server has been deployed. The delivery.rb file is a Ruby file, which means that conditional statements can be used in the configuration file.


delivery_fqdn "chef-automate"
delivery['chef_username'] = "delivery"
delivery['chef_private_key'] = "/etc/delivery/delivery.pem"
delivery['chef_server'] = "https://chef-server.skytap.example/organizations/automate"
insights['enable'] = true


# nginx['log_directory'] = '/var/log/delivery/nginx/*.log'
# nginx['log_rotation']['file_maxbytes'] = 104857600
# nginx['log_rotation']['num_to_keep'] = 10


notifier['enable'] = true
notifier['user_webhook_url'] = 'https://[xmatters instance]/api/integration/1/functions/7ae4d0e1-10bd-4c63-bf60-9a862a0abf18/triggers'
#notifier['slack_webhook_url'] = 'https://[xmatters instance]/api/integration/1/functions/d80f4a0f-c744-4ac6-ab21-72d158051833/triggers'

