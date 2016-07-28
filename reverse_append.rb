def reverse_append(ary, n)
	return ary if n < 0
	reverse_append(ary, n-1)
	ary << n
end

p reverse_append([], 2)