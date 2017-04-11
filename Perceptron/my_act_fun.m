function [y]=my_act_fun(y_in,th)
if y_in>th
    y=1;
elseif (y_in>=(-th))&&(y_in<=th)
        y=0;
elseif(y_in<-th)
            y=-1;
end
        
        