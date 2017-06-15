%{
A permanent-magnet dc motor is to be started under a loaded condition. The load-torque TL is linearly proportional
to the speed and equals 3 [Nm] at a speed of 2850 [RPM] and JL = 0.05 [kg*m2]. We can neglecting La and friction.
The motor current must not exceed ±12.5 [A]. Calculate and plot the voltage va(t), which is to be applied such the 
motor follows the following speed profile.

Motor Specifications: Jm = 0.03 [kg*m2]; Kt = Ke = 0.35 in MKS units; Ra = 0.25 ;
  * Interval #1: From rest to 2850 [RPM] as quickly as possible, 0 < t ? t1
  * Interval #2: Maintain the 2850 [RPM] for 5 seconds, t1 < t ? t1+5 [sec]

%}

n1 =    0 : 0.1 : 9.2;
n2 =  9.3 : 0.1 : 14.2;
n3 = 14.3 : 0.1 : 18.5;

t1 = n1.^1;
t2 = n2.^1;
t3 = n3.^1;


c1 = 0*(t1);
c2 = 0*(t2);
c3 = 0*(t3);

ta = horzcat(t1,c2,c3);
tb = horzcat(c1,t2,c3);
tc = horzcat(c1,c2,t3);

t = ta+tb+tc;

w1 = 436.8*((n1.^0)-exp(-0.125*t1));
v1 = 155.92*(n1.^0)-152.8*exp(-0.125*t1);

wa = horzcat(w1,c2,c3);
va = horzcat(v1,c2,c3);


w2 = 298.45*(n2.^0);
v2 = 107.58*(n2.^0);

wb = horzcat(c1,w2,c3);
vb = horzcat(c1,v2,c3);


w3 = 735.25* exp(-0.125*(t3-(14.2*(1.^t3))))-436.8*(n3.^0);
v3 = 257.3*  exp(-0.125*(t3-(14.2*(1.^t3))))-149.75*(n3.^0);

wc = horzcat(c1,c2,w3);
vc = horzcat(c1,c2,v3);

w = wa+wb+wc;
v = va+vb+vc;

figure(1)
plot(t,v)
xlabel('time, t')
ylabel('Voltage, v')

figure(2)
plot(t,w)
xlabel('time, t')
ylabel('Speed, w')

