%{
Validate your results for Problem 2 using Matlab/Simulink, or an equivalent simulation tool. Provide
narrative explaining how your results validate your analysis. Include the “code,” and plot. Remember
that the scopes in Simulink have a history tab, in that tab you should uncheck that box that limits the
data to the last 5000 elements.
%}

n = 0: 0.1 : 5.7;
t = n.^1;

if t>=5.4
    i = -12.5;
end

w = (t./0.08)*(0.35*i-0.00105);
v = 0.35*w+(0.25*i*n.^0);

figure(1)
stem(t,v)
xlabel('time t')
ylabel('voltage V')