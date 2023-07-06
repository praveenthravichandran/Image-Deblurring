function [ w ] = weight_function_l1( d )


d=abs(d);
epsilon=0.01;
d(d<epsilon)=epsilon;
w=1./d;
end

