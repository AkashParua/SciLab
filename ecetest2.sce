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
//frequency modulated signal
m = 3; //for example modulation index be 3
FM = ca.*cos(2.*%pi.*cf.*time)+m.*sin(2.*%pi.*mf.*time)
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
plot(time,FM);
xlabel("time")
ylabel("amplitude");
title("Frquency Modulated signal");
