// input format ->newton_forward([45;50;55;60],[0.7071;0.7660;0.8192;0.8660],52) example for sin 52
function y = newton_forward(xi,yi,a)
    n = length(xi)
    h = xi(2) - xi(1)
    u = poly([-xi(1),1],'x','c')/h
    table = zeros(n,n)
    table(:,1) = yi(:,1)
    for j=2:n
        for i = j:n
            table(i,j) = table(i,j-1) - table(i-1,j-1)
        end
    end
    disp("Forward Difference Table")
    disp(table)
    disp("Xn+1 - Xn=h=")
    disp(h)
    disp("(X-X0)/h=u=")
    disp(u)
    temp = 1
    f = table(1,1)
    for i = 1:n-1
        temp =  calc_u(temp,u,i-1)
        f = f + temp*table(i+1,i+1)
    end
    disp("Forward forward formulae:")
    disp(f)
       y = polyval(coeff(f),a)
endfunction
function y = calc_u(temp,u,i)
    y = temp * (u - i)/(i+1)
endfunction
function p =polyval(p,a)
    n = length(p)
    s = 0
    for i=1:n
        s = s + p(1,i)*a^(i-1)
    end
    p = s
endfunction
//try newton_forward([1891;1901;1911;1921;1931],[46;66;81;93;101],1895)
//or newton_forward([1931;1941;1951;1961],[172;171.7;157.2;183.9],1946)

