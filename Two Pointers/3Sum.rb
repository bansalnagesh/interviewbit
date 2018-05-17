# https://www.interviewbit.com/problems/3-sum/

class Solution
    # @param a : array of integers
    # @param b : integer
    # @return an integer
    def threeSumClosest(a, b)
        min = Float::INFINITY
    	result = 0
    	a.sort!
    	n = a.length
    	(0..n-2).each do |i|
    		j = i+1
    		k = n-1
    		while (k > j) do
    			sum = a[i]+a[j]+a[k]
    			diff = (sum - b).abs
    			return sum if (diff == 0)
    			if (diff < min)
    				min = diff;
    				result = sum;
    			end
    			if (sum <= b)
    				j += 1
    			else
    				k -= 1
    			end
    		end
    	end
    	return result
    end
end
