clc;
clear all;
disp("Generating amplitiude modulated waveform");
mf = input("massage frequnecy :");
cf = input("carrier frequnecy :");
time = 0:0.01:5;
p = length(time);
ma = input("Enter massage amplitude :");
ca = input("Enter carrier amplitude :")';
ms = ma*cos(2*%pi*mf*time);  //creating massage signal
cs = ca*cos(2*%pi*cf*time);  //carrier signal
k = 1/ca;    //finding modulation index and senitivity
mi = k * ma;
disp(mi,"modulation index ")
disp(k,"sensitivity:")
AM = (1+k.*ms).*cs;   //the Amplitude modulated signal 
figure(1)
subplot(3,1,1)  //plotting massage,carrier , and modulated 
plot(time,ms);
xlabel("time")
ylabel("amplitude");
title("Massage signal");
subplot(3,1,2)
plot(time,cs);
xlabel("time")
ylabel("amplitude");
title("Carrier signal");
subplot(3,1,3)
plot(time,AM);
xlabel("time")
ylabel("amplitude");
title("Amplitude Modulated signal");
disp("Demodulation of AM signal");
demod = AM.*cs;       //recieved signal multiplyed by carrier 
M = abs(fft(demod)); //fft is fast fourier tranformation. M frquency domain
lp = [ones(1,4*mf),zeros(1,p-4*mf)]; //low pass filter 
rec = lp.*M; //recovered signal
sig = ifft(rec); //recived massage signal using inverse fast fourier transformation
figure(2)
subplot(5,1,1)
plot(time,demod)
xlabel("time")
ylabel("amplitude");
title("recieved signal * carrier signal");
subplot(5,1,2)
plot(time,M)
xlabel("time")
ylabel("amplitude");
title("Frequency Domain");
subplot(5,1,3)
plot(time,lp)
xlabel("time")
ylabel("amplitude");
title("Low pass filter");
subplot(5,1,4)
plot(time,rec)
xlabel("time")
ylabel("amplitude");
title("Recovered signal");
subplot(5,1,5)
plot(time,sig)
xlabel("time")
ylabel("amplitude");
title("Recieved massage");
