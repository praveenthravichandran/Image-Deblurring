function [ x_padding,padsize ] = G_padding( x,k,factor )

padsize=size(k)*factor;
x_padding=padarray(x,padsize,'replicate','both');

end

