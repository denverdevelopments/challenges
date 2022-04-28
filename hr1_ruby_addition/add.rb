
def end_arr_add(arr, element)
    # Add `element` to the end of the Array variable `arr`, return `arr`
    ary.push(element)
end

def begin_arr_add(arr, element)
    # Add `element` to the beginning of the Array variable `arr`, return `arr`
    arr.unshift(element)
end

def index_arr_add(arr, index, element)
    # Add `element` at position `index` to the Array variable `arr`, return `arr`
    arr.insert(index, element)
end

def index_arr_multiple_add(arr, index)
    # add any two elements to the arr at the index
    # arr.insert(index, e1, e2)  ## Wrong -- not needed
    arr.insert(index, 1, 2)
end


# end_arr_add(arr, element)
