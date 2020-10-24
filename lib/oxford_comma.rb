

def oxford_comma(array)
    if array.size >= 3 
       last = array.pop
       array.push('and '+last)
       array.join(', ')
    elsif array.size >= 1
       array.join(' and ')  
    else
       array.join  
    end  
end




