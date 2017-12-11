def fib_r(n)
  return n if n <= 1
  return fib_r(n-1) + fib_r(n-2)
end

def merge_sort(arr)
  if arr.size <= 1
    return arr
  end

  midpoint = (arr.size / 2.0).floor

  l = arr[0...midpoint]
  r = arr[midpoint..-1]

  l = merge_sort(l)
  r = merge_sort(r)

  merge(l, r)
end

def merge(l, r)
  sorted = []
  while (!l.empty?  && !r.empty?)
    if l[0] < r[0]
      sorted << l.shift()
    else
      sorted << r.shift()
    end
  end
  sorted.push(*l) unless l.empty?
  sorted.push(*r) unless r.empty?
  return sorted
end
