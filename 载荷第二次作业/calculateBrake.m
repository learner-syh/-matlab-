clc
clear all
a = 0;
b = 500000;
e = 0.1;
%fname为函数名,a,b为区间端点，e为精�?
fa = brake(a);
fb = brake(b);
if fa*fb>0 error('两端函数值为同号');end
k = 0
x = (a+b)/2
while (b-a)>(2*e)
    fx = brake(x);
    if fa*fx<0
        b = x;
        fb = fx;
    else
        a = x;
        fa = fx;
    end
    k = k+1
    x = (a+b)/2
end

v1 = 50000*9.8-2*x;