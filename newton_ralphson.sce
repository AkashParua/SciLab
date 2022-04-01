//input format ->  nr('y=3*sin(x)+6*cos(x)',0) , for y = 3sinx + 6cosx , with approximation at 0
function y = nr(p,a)
    disp(a)
    deff('y=f(x)',p)
    if abs(f(a))<0.00001 then y = a     //stop condition for recusrsion when the f(x) is close to 0
        disp(a)
    else
    slope = numderivative(f,a)
    c = (slope * a - f(a))/slope  //c = Xn+1 = (f'(Xn)*Xn - f(Xn))/f'(Xn)
    y = nr(p,c) //recursively calling newton-ralphson function with Xn+1
    end
endfunction

