require 'sinatra'
require 'json'
require 'securerandom'

server_id = SecureRandom.uuid

get '/' do
  name = 'Joe Montana'
  
  "Hello, #{name} from #{server_id}...\n"
end

get '/kill' do
  Process.kill 'TERM', Process.pid
end
