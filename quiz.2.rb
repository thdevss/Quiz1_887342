def prime_hash(n)
	hash = Hash.new(0)
	j = i = 1
    loop do
      j += 1
      next unless prime?(j)
      hash["p#{i}"] = j
      i += 1
      break if i == n+1
    end
	return hash
end

def prime?(n)
	for i in 2..n-1
    	if n % i == 0
      		return false
    	end
    end
    return true
end

prime_hash(5).each { |k, v| 
	puts "#{k} -> #{v}"
}