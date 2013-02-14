require 'sinatra'
require 'iron_mq'
load 'config.rb'

get '/' do
  @queue = get_queue

  case params[:a]
    when 'post'
      @msg = @queue.post("This Message was put on at #{Time.now}")
    when 'get'
      @msg = @queue.get
    when 'delete'
      @delete_me = @queue.get
      @msg = @delete_me.delete if @delete_me
  end

  begin
    @size = @queue.size
  rescue
    puts 'size() on a never used queue errors out Sinatra'
  end

  erb :index
end


