/*PLEASE READ BEFORE USE*/
//for example the (xi,yi) -> {(2,10),(3,15),(5,25),(8,40),(12,60)}
//we need to find the function as well as value at 4 
//ndfi([2;3;5;8;12],[10;15;25;40;60],4)

function p =polyval(p,a)
    n = length(p)
    s = 0
    for i=1:n
        s = s + p(1,i)*a^(i-1)
    end
    p = s
endfunction
function a=ndfi(xi,yi,x0)
    n = length(xi)
    d = zeros(n,n)
    d(:,1) = yi
    for i = 2:n
        for j = i:n
            d(j,i)=  (d(j,i-1) - d(j-1,i-1))/(xi(j)- xi(j-i+1))
        end
    end
    disp(d)
     y = poly([0],'x','c')  //initializing the required polynomial
      y=y + yi(1)
    for i = 1:n-1
          p = poly([1],'x','c')*d(i+1,i+1)
        for j = 1:i
                p = p * poly([-xi(j),1],'x','c')
            end
          y = y + p
    end
    disp("Required Ploynomial:")
    disp(y)
     a = polyval(coeff(y),x0)
    disp("Value of f(x0) given point x0:") 
    disp(a)
endfunction

