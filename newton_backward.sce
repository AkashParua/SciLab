//input format -> newton_backward([1891;1901;1911;1921;1931],[46;66;81;93;101],1925)
function y = newton_backward(xi,yi,a)
    n = length(xi)
    h = xi(2) - xi(1)
    u=  (a-xi(n))/h
    table = zeros(n,n)
    table(:,1) = yi(:,1)
    for j=2:n
        for i = n:-1:j
            table(i,j) = table(i,j-1) - table(i-1,j-1)
        end
    end
    disp("Backward Difference Table")
    disp(table)
    disp("Xn - Xn-1=h=")
    disp(h)
    disp("(X-Xn)/h=u=")
    disp(u)
    f = table(n,1)
    for i = 2:n
        f = f+ (calc(u,i-1)*table(n,i))/factorial(i-1)
    end
       y = f
endfunction
function y = calc(u,i)
   temp = u
   for j = 1:i-1
       temp = temp * (u+j)
   end
   y = temp
endfunction

