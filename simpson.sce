function y = simpson(i,a,b,n)
    deff("y=f(x)",i)
    dx = (b-a)/n
    s = f(a) + f(b)
    for i = 1:2:n-1
        s = s + 4*f(a+i*dx)
    end
    for i = 2:2:n-1
        s = s + 2*f(a+i*dx)
    end
    y = dx/3 * s
endfunction
//input format --->simpson("y = 1/(1 + x**2)",0,6,6)
//first define the function to be integreated , then lower and upper limit , then add number of intervals
