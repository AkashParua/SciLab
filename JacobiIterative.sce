function y = Jacobi(cfm,cm)
    n = length(cm)
    s = zeros(1,n)   //s will contain the approximation for n-1th iteration
    s1 = ones(1,n)   //s1 will contain the approximation for nth itration 
    while abs(sum(s1 -s)) > 0.0001  //if the value are converging the sum of->(xi(n)-xi(n-1)) will eventually decrease
        s = s1     //we start the approximation with x1=x2=x3=x4.....=1
    for i = 1:n    //iterating through the rows 
        x = cfm(i,:)
        z = x*s'
        z = z - x(1,i)*s(1,i)
        s1(1,i)= (cm(i,1) - z)/cfm(i,i) //filling values of s1 (nth) approximations
    end
    disp("approximation:",s1)  //displaying nth approximation 
end
    y = s1
    disp(s1)
endfunction
