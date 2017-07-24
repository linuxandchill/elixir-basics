list_concat = fn a,b -> a ++ b end

sum = fn a,b,c -> a + b + c end

pair_tuple_to_list = fn({a,b}) -> Tuple.to_list({a,b}) end

IO.inspect list_concat.([1,2], [3,4])

IO.inspect sum.(1,2,3)

IO.inspect pair_tuple_to_list.({1234, 5678})

