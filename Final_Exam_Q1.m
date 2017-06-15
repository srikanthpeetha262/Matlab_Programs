%{
A PMAC motor has the following specifications: 2 pole; Balanced 3 phase; Kt = Ke = 0.75 in MKS units; 
Ls = 25 [mH]; Rs = 0.25 ?; Jm = 0.03 [kg*m2]. This motor is driving a load of inertia JL = 0.05 [kg*m2],
and a load torque TL = 2 [Nm] to bring the system from rest to a speed of 2,000 [RPM] in t1 [sec.]; 
assume Tem = 7 [NM].
  * Calculate (by hand) and plot the speed Wm(t) and position Theta_is(t) as functions of time during this interval of 0 < t < t1 [sec]
  * Calculate and plot the voltage va(t) and current ia(t) as functions of time during this interval of 0 < t < t1 [sec.]
%}

n = 0: 0.01 : 3.35;
t = n.^1;

% program for speed %

w = 62.5*t;
figure(1)
plot(t,w)
ylabel('speed   W (t)')
xlabel('time (t)')

% program for Angle %

a = 31.25*(t.^2);
figure(2)
plot(t,a)
ylabel('angle')
xlabel('time (t)')

% program for Current %

c = 6.23*cos(31.25*(t.^2));
figure(3)
plot(t,c)
ylabel('current Ia(t)')
xlabel('time (t)')


% equation for Ea  %

p = 46.87*t;
q = cos(31.25*(t.^2));
D = diag(q);
r = p*D;


% equation for Ls * derivative of Ia(t) %

e = -9.73*t;
f = sin(31.25*(t.^2));
G = diag(f);
h = e*G;


% equation for voltage,v %

v = r+h+cos( 31.25*(t.^2) );
figure(4)
plot(t,v)
xlabel('time (t)')
ylabel('voltage (V)')


