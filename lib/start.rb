require 'zss/service'

require_relative 'service_register'
require_relative 'pong_service'

# register a plugin to see zss service logging
plugin = LoggerFacade::Plugins::Console.new({ level: :debug })
LoggerFacade::Manager.use(plugin)
