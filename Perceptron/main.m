%   A basic perceptron network
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

x=[-1 -1;-1 1;1 -1;1 1];
T=[-1;-1;-1;1];

W=[0;0];
B=[0];
th=0;

X=zeros(1,2);
DW=zeros(2,1);
DB=zeros(1,1);
Y=zeros(4,1);
y=0;
iter=0;
while ~isequal(Y,T)
     for i=1:4
         X=x(i:i,:);
         target=T(i:i,:);
         y_in=X*W+B;
         y=my_act_fun(y_in,th);
         Y(i:i,:)=y;
         if y~=target
         DW=target*X';
         DB=target;
         W=W+DW;
         B=B+DB;
         end
     end
     iter=iter+1;
end

x1=x(:,1);
x2=x(:,2);
x1=(-(W(1,1)/W(2,1))*x2)-(B/W(2,1));
plot(x(:,1),x(:,2),'o',x1,x2);
axis([-2 2 -2 2]);
xlabel('X1');
ylabel('X2');
title('AND gate output');



