dt=0.00001;
tstart=0;
tend=0.04;
t=tstart:dt:tend;
xc1=250*cos(2*pi*200*t);
nt1=120*cos(2*pi*60*t);
xc=xc1+nt1;

figure(1)

subplot(2,1,1)
plot(t,xc)
xlabel('time')
ylabel('xc(t)')
title('sinusoid')

T=0.0002;
n=tstart/T:tend/T;
xi=250*cos(2*pi*200*n*T);
nt=120*cos(2*pi*60*n*T);
xd=xi+nt;

subplot(2,1,2)
stem(n,xd)
xlabel('sample number')
ylabel('xd[n]')
title('discrete sinusoid')
