%   A basic example of MP Neurons
%   Copyright 2014 Ashutosh Tadkase
%   This program is free software: you can redistribute it and/or modify
%   it under the terms of the GNU General Public License as published by
%   the Free Software Foundation, either version 3 of the License, or
%   (at your option) any later version.
%
%   This program is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%   GNU General Public License for more details.
%
%   You should have received a copy of the GNU General Public License
%   along with this program.  If not, see <http://www.gnu.org/licenses/>.

clc;
clear all;
close all;


% AND gate
x1=[0 0 1 1];
x2=[0 1 0 1];
w1=1;
w2=1;
theta=1;

for i=1:4
    y_in(i)=(x1(i)*w1)+(x2(i)*w2);
end
fprintf('AND GATE\n');
fprintf('x1\tx2\ty_in\ty\n');
for i=1:4
    if y_in(i)<=theta
        Y(i)=0;
    else
        Y(i)=1;
    end
fprintf('%d\t%d\t%d\t\t%d\n',x1(i),x2(i),y_in(i),Y(i));    
end

%OR GATE
  
x1=[0 0 1 1];
x2=[0 1 0 1];
w1=1;
w2=1;
theta=1;
for i=1:4
    y_in(i)=(w1*x1(i))+(w2*x2(i));
end
fprintf('OR GATE\n');
fprintf('x1\tx2\ty_in\ty\n');
for i=1:4
    if y_in(i)>=theta
        y(i)=1;
    else
        y(i)=0;
    end
    fprintf('%d\t%d\t%d\t\t%d\n',x1(i),x2(i),y_in(i),y(i));
end

%XOR GATE

x1=[0 0 1 1];
x2=[0 1 0 1];

w1=1;w2=-1;
for i=1:4
    y_in1(i)=(w1*x1(i))+(w2*x2(i));
end
theta=1;
for i=1:4
    if y_in1(i)>=1
        y1(i)=1;
    else 
        y1(i)=0;
    end
end


w11=-1;w21=1;
for i=1:4
    y_in2(i)=(w11*x1(i))+(w21*x2(i));
end
theta=1;
for i=1:4
    if y_in2(i)>=theta
        y2(i)=1;
    else 
        y2(i)=0;
    end
end

v1=1;v2=1;
for i=1:4
    y_in(i)=(v1*y1(i))+(v2*y2(i));
end
theta=1;
for i=1:4
    if y_in(i)>=theta
        y(i)=1;
    else 
        y(i)=0;
    end
end

fprintf('XOR GATE\n');
fprintf('x1\tx2\ty_in1\ty_in2\ty1\ty2\ty_in\ty\n');
for i=1:4
    fprintf('%d\t%d\t%d\t\t%d\t\t%d\t%d\t%d\t\t%d\n',x1(i),x2(i),y_in1(i),y_in2(i),y1(i),y2(i),y_in(i),y(i));
end

