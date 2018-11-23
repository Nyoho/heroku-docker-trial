require 'webrick'

server = WEBrick::HTTPServer.new :Port => ENV["PORT"]

server.mount_proc '/' do |req, res|
    res.body = "Hello, world!\n#{ENV['DESCRIPTION']}\n"
end

trap 'INT' do
  server.shutdown
end

server.start
