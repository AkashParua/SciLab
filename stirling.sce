function y = stirling(xi,yi,x1)
    n = length(xi)
    s = floor(n/2)+1
    h = xi(2) - xi(1)
    y1 = yi(s)
    u = (x1 - xi(s))/h
    table = zeros(n,n)
    for i = 1:n-1
        table(i,1) = yi(i+1) - yi(i)
        end
    for i = 2:n-1 
        for j = 1:n-i
            table(j,i) = table(j+1,i-1) - table(j,i-1)
            end
    end
    disp("Forward Difference Table")
    disp(table)
    t1  = 1
    t2  = 1
    k   = 1
    l = 1
    d = 1
    d2 = 1
    n1 = 1
    n2 = 1
    for i = 2:n 
        if modulo(i-1,2) ~= 0 then 
            if k ~=2 then      
        t1 = t1 * (u**k- (k-1)**2) 
    else
        t1 = t1 * (u**2 - (k-1)**2)
        end
        k = k+ 1
        d = d * (i-1)
        s = floor((n - i + 1)/2) + 1
        temp = table(s,i-1) + table(s-1,i-1)
        y1 = y1 + (t1/(2*d)) * temp
else
    t2 = t2 * (u**2-(l-1)**2)
    l=l+1
    d = d * (i-1)
    s = floor((n-i+1)/2) + 1
    y1 = y1 + (t2/d)*table(s,i-1)
end
end  
   y = y1
endfunction
