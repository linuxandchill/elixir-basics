#task = Task.async fn -> 
#  IO.puts "HOLA DAWG"
#end

task = Task.async(IO, :puts, ["HOLA DAWG"])

result = Task.await(task, 5000)

result 
