prefix = fn strOut -> (fn 
  strInn -> IO.puts "#{strOut} #{strInn}"
end) end

jump = prefix.("Jump")

jump.("high")

jump
