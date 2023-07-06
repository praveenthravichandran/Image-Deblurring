function Rec=FraRecMultiLevel2D(C,R,L)


nR=length(R);

for k=L:-1:2
    C{k-1}{1,1}=FraRec2D(C{k},R,k);
end
Rec=FraRec2D(C{1},R,1);

% [Tm,n]=size(C);
% m=round(Tm/(((nR-1)^2-1)*L+1));
% st=Tm;
% 
% SorAS=R{nR};
% Rec11=C(st-m+1:st,:);
% st=st-m;
% for k=L:-1:1
%     Rec=zeros(m,n);
%     for i=1:nR-1
%         M1=R{i};
%         for j=1:nR-1
%             M2=R{j};
%             if (i==1)&(j==1)
%                 temp=ConvSymAsym(Rec11,M1,SorAS(i),L);
%                 temp=ConvSymAsym(temp',M2,SorAS(j),L);
%                 Rec=Rec+temp';
%             else
%                 temp=ConvSymAsym(C(st-m+1:st,:),M1,SorAS(i),L);
%                 temp=ConvSymAsym(temp',M2,SorAS(j),L);
%                 Rec=Rec+temp';
%                 st=st-m;
%             end
%         end
%     end
%     Rec11=Rec;
% end
% Rec=Rec11;