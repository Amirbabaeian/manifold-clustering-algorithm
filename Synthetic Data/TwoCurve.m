function [ D ] = TwoCurve( ~ )
n1=1000;
D1=zeros(n1,2);
X1=.68+.07*rand(n1,1);
D1(:,1)=X1;
Y1=-X1.^2+1;
noise=-1+2*rand(n1,1);  % generate uniform noise on the interval [-1 1]
D1(:,2)=Y1+.00*noise;   % add noise to the data 
                        % cluster 1
n2=1000;
D2=zeros(n2,2);
X2=.68+.07*rand(n2,1);
D2(:,1)=X2;
Y2=X2.^2;
noise=-1+2*rand(n2,1);  % generate uniform noise on the interval [-1 1]
D2(:,2)=Y2+.00*noise;   % add noise to the data 
D=[D1;D2];

end
%%[group,path] = Path_Based_Cluster( D , 70 , 7 );