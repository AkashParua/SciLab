function y = trapezoidal(i,a,b,n)
    deff("y=f(x)",i)
    dx = (b-a)/n
    s = f(a) + f(b)
    for i = 1:n-1
        s = s + 2*f(a+i*dx)
    end
    y = dx/2 * s
endfunction
//input format --->trapezoidal("y = 1/(1 + x**2)",0,6,6)
//first define the function to be integreated , then lower and upper limit , then add number of intervals
