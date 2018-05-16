# https://www.interviewbit.com/problems/minimize-the-absolute-difference/

class Solution
    # @param a : array of integers
    # @param b : array of integers
    # @param c : array of integers
    # @return an integer
    def solve(a, b, c)
        maximum = Float::INFINITY
        x = a.size
        y = b.size
        z = c.size
        res_i = res_j = res_k = 0;
        i = j = k = 0;
        while(i < x && j < y && k < z) do
            min = [a[i],b[j],c[k]].min
            max = [a[i],b[j],c[k]].max
            
            if (max - min).abs < maximum
                maximum = max - min
                #If we also want to find the elements
                res_i = i
                res_j = j
                res_k = k
            end
            # break if maximum == 0 
            if a[i] == min 
                i += 1
            elsif b[j] == min
                j += 1
            else
                k += 1
            end
        end
        maximum
            
    end
end
