function y = gauss(cfm,com)
    am = [cfm com]
    s = "The augmented matrix:"
    disp(s)
    disp(am)               //no. of columns is nR + 1
    n = length(com)       //stores the number of rows  
    //triangularizing 
    for i = 1:n-1
        k = am(i,i)      //choosing the diagonal element
        am(i,:) = am(i,:)/k   //dividing the entire row by diagonal element
        for j = i+1:n       //iterating through all rows below ith row
            l = am(j,i)      //l are the values below the diagonal elements
            am(j,:) = am(j,:)- l*am(i,:) //mking the elements below ith column = 0
        end
    end
    disp(am)
    i = n              //applying back substitution
    while i>= 2
        k = am(i,i)
        am(i,:) = am(i,:)/k
        j = i - 1
        while j > = 1
            l = am(j,i)
            am(j,:) = am(j,:)- l*am(i,:)
            j = j-1
        end
        i = i - 1     
    end
    disp(am)
    y = am(:,n+1)
endfunction
