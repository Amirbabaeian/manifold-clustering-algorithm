function [ D ] = Cross( ~ )
n1=2000;
D1=zeros(n1,2);
X1=-.5+1*rand(n1,1);
D1(:,1)=X1;
% Y=-X.^2+1;
Y1=zeros(n1,1);
noise=-1+2*rand(n1,1);  % generate uniform noise on the interval [-1 1]
D1(:,2)=Y1+.0*noise;   % add noise to the data 
                        % cluster 1
n2=6500;
D2=zeros(n2,2);
X2=zeros(n2,1);
noise=-1+2*rand(n2,1);  % generate uniform noise on the interval [-1 1]
D2(:,1)=X2+.0*noise;   % add noise to the data 
Y2=-.5+1*rand(n2,1);
D2(:,2)=Y2;
% Y=-X.^2+1;
D=[D1;D2];

end
% [group,path] = Path_Based_Cluster( D , 70 , 6 );