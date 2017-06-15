  get_req = fn(id) -> 
    :timer.sleep(1000)
    "{user: {id: #{id}}}"
  end

  async_get_req = fn(id) -> 
    spawn(fn -> IO.puts(get_req.(id)) end) 
  end

#Enum.map( 1..10, &async_get_req.(&1) )

