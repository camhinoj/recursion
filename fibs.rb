def fibs(n)
	fib = 1
	fib2 = 1
	arr = [fib, fib2]
	(n-2).times do 
		total = fib + fib2
		arr << total
		fib = fib2
		fib2 = total
	end
	arr
end

def fibs_rec(n, arr)
	return [1, 1] if n == 2
	arr = fibs_rec(n-1, [])
	arr << arr[n-2] + arr[n-3]
end


p fibs(8)
p fibs_rec(8, [])