function Rec=FraRec2D(C,R,L)


nR=length(R);
SorAS=R{nR};

ImSize=size(C{1,1});
Rec=zeros(ImSize);

for i=1:nR-1
    temp=zeros(ImSize);
    for j=1:nR-1
        M2=R{j};
        temp=temp+(ConvSymAsym2D((C{i,j})',M2,SorAS(j),L))';
        % Rec=Rec+ConvSymAsym2D(C{i,j},M1,SorAS(i),M2,SorAS(j),L);
    end
    M1=R{i};
    Rec=Rec+ConvSymAsym2D(temp,M1,SorAS(i),L);
end