def merge_sort(array)
	return array.sort if array.size <= 2
	arraysplit1 = array.slice!(0..(array.size/2)-1)
	arraysplit2 = array
	sort_array1 = merge_sort(arraysplit1)
	sort_array2 = merge_sort(arraysplit2)
	sorting_algorithm(sort_array1, sort_array2)
end

def sorting_algorithm(array1, array2)
	sort_array = []
	while  !(array1.empty? || array2.empty?) do
		if array1[0] < array2[0]
			sort_array << array1.shift
		else
			sort_array << array2.shift
		end
	end
	if array1 != nil
		array1.each do |item|
			sort_array << item
		end
	end
	if array2 != nil
		array2.each do |item|
			sort_array << item
		end
	end
	sort_array
end
	

p merge_sort([1,10,6,5,3,1,8,7,2,4,9])