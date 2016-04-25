###
#  Copyright (c) Microsoft. All rights reserved. Licensed under the MIT license.
#  See LICENSE in the project root for license information.
##

# The following values must match the client ID, key, and reply URL
# in your Azure application.
# ENV['CLIENT_ID'] = 'c20bc5e2-582d-41ca-8ddb-43fe5371cb57'
# ENV['CLIENT_SECRET'] = 'JhZCvYT5P7f0AFw/FdLpT7z42tWQTcFLZ2MoNdXU+8Y='
ENV['CLIENT_ID'] = 'e2bc4d6b-a9b1-4253-9ed3-39d153edb9ff'
ENV['CLIENT_SECRET'] = '9QzI86oosNEP8+jKHG05NxzMgcoFXswz7hJZTx3A3GQ='
ENV['TENANT'] = 'giafr'
ENV['REPLY_URL'] = 'http://localhost:3000/auth/azureactivedirectory/callback'

ENV['LOGOUT_ENDPOINT'] = 'https://login.microsoftonline.com/common/oauth2/logout'

# Load the Rails application.
require File.expand_path('../application', __FILE__)

ADAL::Logging.log_level = ADAL::Logger::VERBOSE

Rails.logger = Logger.new(STDOUT)

# Initialize the Rails application.
Rails.application.initialize!
