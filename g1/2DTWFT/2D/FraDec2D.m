function Dec=FraDec2D(A,D,L)

nD=length(D);
SorAS=D{nD};

for i=1:nD-1
    M1=D{i};
    tempi=ConvSymAsym2D(A,M1,SorAS(i),L);
    for j=1:nD-1
        M2=D{j};        
        tempj=ConvSymAsym2D(tempi',M2,SorAS(j),L);
        Dec{i,j}=tempj';
        % Dec{i,j}=ConvSymAsym2D(A,M1,SorAS(i),M2,SorAS(j),L);
    end
end