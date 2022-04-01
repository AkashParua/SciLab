function y = Seidel(cfm,cm)
    n = length(cm)
    s = ones(1,n)         // we start with approximation x1=x2=x3=x4=.....=1
    old_s = zeros(1,n)
    while abs(sum(s - old_s)) > 0.0001   //condition to chack whether series is converging 
        old_s = s         //storing the old value of [x1,x2,x3.....]
    for i = 1:n
        x = cfm(i,:)
        z = x*s'
        z = z - x(1,i)*s(1,i)
        s(1,i)= (cm(i,1) - z)/cfm(i,i)  //updating the value of s within each iteration
    end
    disp("approximation:",s)
end
    y = s
    disp(s)
endfunction

//Key difference between Gauss-Jacobi and Gauss-Siedel Method is line no. 11
// In Jacobi , the new approximations are stored in another matrix 
//In Siedel the original matrix itself is changing with each iteration
