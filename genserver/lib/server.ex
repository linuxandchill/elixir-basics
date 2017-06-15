defmodule Server do
  def start(callback_module, state \\nil) do 
    parent = self()
    spawn fn -> 
      loop(callback_module, parent, state) 
    end
  end

  def loop(callback_module, parent, state) do 
    receive do 
      message -> 
      state = callback_module.handle_msg(message, parent, state)
      loop(callback_module, parent, state)
    end
  end
end

#iex > server = Server.start(CB_MODULE )
#iex > send server, {:atom, "msg" }

