class PongService
  def ping payload
    puts "PongService => #{payload}"
    return "PONG"
  end
end
