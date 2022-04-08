deff("y = f(x)","y = sqrt(cos(x))"); //defing the function 
l = 0;
h = %pi/2;
n = 99;               //numbr of partitions is 99
dx = (h-l)/n;
y0 = f(0);   //definng Y0 and Yn i.e f(0) and f(pi/2) respectively
yn = f(h);
yi = zeros(n-1,1);
for i = 1:n-1
    yi(i) = f(l + dx*i)  //yi = [y1,y2,y3,y4 .....]
end
s = 0;
for i = 1:n-1
    if modulo(i,3) == 0 then s= s + 2*yi(i)    //taking the yi , i = 3,6,9 .... terms
    else s = s + 3*yi(i) end          //remaingn terms 
end
s = s + y0 + yn ;      //s = (y0 + yn) + 3*(y1+y2+y4+y5+y7....) + 2*(y3 + y6 + y9....)
ans = s*3*dx/8;         // ans = 3h.s/8 
disp(" o∫pi/2 √cos θ dθ =",ans);
