clc
clear
a = 10000;
b = 500000;
e = 0.1;
%fname为函数名,a,b为区间端点，e为精�?
fa = takeoff(a);
fb = takeoff(b);
if fa*fb>0 error('两端函数值为同号');end
k = 0
x = (a+b)/2
while (b-a)>(2*e)
    fx = takeoff(x);
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

v1 = 50000*9.8*1.7-2*x;