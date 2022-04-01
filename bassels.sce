function y= bassels(xi,yi,x0)
    n = length(xi)
    table = zeros(n,n)
    table(:,1) = yi(:,1)
    for i = 2:n 
        for j = 1:n-i+1
            table(j,i) = table(j+1,i-1) - table(j,i-1)
        end
    end
    disp(table)
    k = 0
    if modulo(n,2) == 0 then
         s = (yi(floor(n/2)) + yi(floor(n/2+1)))/2
         k = n/2 
     else
         s = yi(floor(n/2))
         k = floor(n/2) + 1
    end
    u = (x0 - xi(k))/(xi(2)- xi(1))
    for i = 2:n 
        
        if modulo(i,2)==0 then
            s = s+ (((u - 0.5)*ucal(u,i-2)*table(k,i)) / factorial(i-1))
           
        else 
            s =s + (ucal(u,i-1) *(table(k,i) + table(k-1,i))/(factorial(i-1)*2))
            k = k -1
          
    end
    end
    y = s
endfunction
function y = ucal(u,n)
    t = u
    for i = 1:floor(n/2)
        t = t*(u-i)
    end
    for i = 1:floor(n/2)-1
        t = t* (u+i)
    end
    y = t
endfunction
