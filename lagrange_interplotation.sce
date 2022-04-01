/*PLEASE READ BEFORE USE*/
//for example the (xi,yi) -> {(2,10),(3,15),(5,25),(8,40),(12,60)}
//we need to find the function as well as value at 4 
//lag_int([2;3;5;8;12],[10;15;25;40;60],4)

function a = lag_int(xi,yi,x0)
    m = length(xi)
    n = m -1 //degree of the polynomial
    y = poly([0],'x','c')  //initializing the required polynomial
    for i = 1:n
        p = poly([1],'x','c')
        for j = 1:n
            if j ~= i
                p = p * poly([-xi(j),1],'x','c')/(xi(i) - xi(j))
            end
        end
        y = y+ p*yi(i)
    end
    disp(y)
    t = coeff(y)
    a = polyval(t,x0)
    disp("Value of f(x0) given point x0:") 
    disp(a)
endfunction
function p =polyval(p,a)
    n = length(p)
    s = 0
    for i=1:n
        s = s + p(1,i)*a^(i-1)
    end
    p = s
endfunction

