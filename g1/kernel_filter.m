function Rec=kernel_filter(C,R,L,ratio)


for k=L:-1:2
    C=sort_filter(C,k,length(R)-1,ratio);
    C{k-1}{1,1}=FraRec2D(C{k},R,k);
end
C=sort_filter(C,1,length(R)-1,ratio);
Rec=FraRec2D(C{1},R,1);


