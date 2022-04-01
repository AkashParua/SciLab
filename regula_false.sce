//try -> rf('y=3*sin(x)+6*cos(x)',1,3)
// first argument is a string difining the function , the next two arguments are the approx range of the roots
function y = rf(p,a,b)
        deff('y=f(x)',p)  
        if f(a)*f(b)>0
            disp("Wrong Approximations")
            y = -1
        end   
        c = (a*f(b) - b*f(a))/(f(b) - f(a))   
       disp(c)
    if abs(f(c)) < 0.000001 then      //stop condition for recursion 
       disp("root:",c)
       y = c
        else
        if f(b)*f(c) < 0 then y= rf(p,c,b) //root is between (c,b) recursively calling regula false with c and b
        else y =rf(p,a,c)      //root is between (a,c)
        end
     end
endfunction    

