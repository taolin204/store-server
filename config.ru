#!/usr/bin/env ruby
require 'rhoconnect/application/init'

# secret is generated along with the app
Rhoconnect::Server.set     :secret,      '9f35dfe1727601a470fd8718626d4d61d6699f11580b441ae63f209c4ea991de040c26e789a88b8e3aae4349d1c133d0c17b0c025ca23e615efd4c501261652f'

# !!! Add your custom initializers and overrides here !!!
# For example, uncomment the following line to enable Stats
#Rhoconnect::Server.enable  :stats
# uncomment the following line to disable Resque Front-end console
#Rhoconnect.disable_resque_console = true
# uncomment the following line to disable Rhoconnect Front-end console
#Rhoconnect.disable_rc_console = true

# Load RhoConnect application
require './application'

# run RhoConnect Application
run Rhoconnect.app