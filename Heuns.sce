//heun("k=x+y",0,1,0.5,100)   INPUT EXAMPLE
// for dy/dx = x+y , x0 = 0 , f(x0) = 1 and 100 intervals
// "k = x+ y" --> dy/dx = x+y 
// x0 = intial value of x
// y0 = intial value of y i.e f(x0)
// N = number of intervals 
function y = heun(diff_equation,x0,y0,xn,N)
     deff("k = f(x,y)",diff_equation)
    d = (xn-x0)/N       
    yi = y0
    yj = 0
    for xi = x0:d:(xn-d)
        yj = yi+(f(xi +d ,yi + d*f(xi,yi)) + f(xi,yi))*d/2
        yi = yj
        end
    y = yi
    disp(y)
endfunction
