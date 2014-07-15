require 'zss/service'
require_relative 'pong_service'

module ZSS
  class ServiceRegister

    def self.get_service
      config = Hashie::Mash.new(
        backend: 'tcp://127.0.0.1:7776'
      )
      service = ZSS::Service.new(:pong, config)

      instance = PongService.new
      service.add_route(instance, :ping)

      service
    end
  end
end
