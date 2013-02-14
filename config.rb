def get_client
  ### Set these to your IronMQ credentials ###
  config = {
    token: 'WjZRmOk5BpkUkhtpxvpQno8Bxzk',
    project_id: '4e25e1d25c0dd27801000283'
  }
  @ironmq ||= IronMQ::Client.new(token: config[:token], project_id: config[:project_id])
end

def get_queue
  begin
    ironmq = get_client
  rescue
    erb :index
    return
  end
  @queue = ironmq.queue("open_shift_queue")
end