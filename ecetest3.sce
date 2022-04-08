clc;
clear all;
f = 4;   //massage signal freq
sampf = 25*f;  //sampling freq
time = 0:1/sampf:2; //time
a = 2;   //amplitude
m = a*sin(2*%pi*f*time); //massage signal
subplot(3,1,1);
plot(time,m);
xlabel("time")
ylabel("Amplitude")
title("Massage Signal")
x = m + a; //shifting
quant = round(x); //quantizing 
encode = dec2bin(quant); //changing to binary
decode = bin2dec(encode);//decoding binary to decimal
rec = decode - a; //shifting back 
subplot(3,1,2);
plot(time,rec);
xlabel("time");
ylabel("Amplitude");
title("Massage Signal");
