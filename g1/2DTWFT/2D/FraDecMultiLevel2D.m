function Dec=FraDecMultiLevel2D(A,D,L)



nD=length(D);

kDec=A;
for k=1:L
    Dec{k}=FraDec2D(kDec,D,k);
    kDec=Dec{k}{1,1};
end

% [m,n]=size(A);
% kDec=A;
% Dec=[];
% SorAS=D{nD};
% for k=1:L
%     for i=nD-1:-1:1
%         M1=D{i};
%         for j=nD-1:-1:1
%             M2=D{j};
%             temp=ConvSymAsym(kDec,M1,SorAS(i),L);
%             temp=ConvSymAsym(temp',M2,SorAS(j),L);
%             temp=temp';
%             if (i==1)&(j==1)
%                 kDec=temp;
%             else
%                 Dec=[Dec;temp];
%             end
%         end
%     end
% end
% Dec=[Dec;kDec];