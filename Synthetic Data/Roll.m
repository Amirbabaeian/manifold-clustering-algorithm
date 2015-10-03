function [ D ] = Roll( ~ )

n1=8000;
D1=zeros(n1,3);
D1(:,1)=-.4+.8.*rand(n1,1);
Xt =.8.*rand(n1,1);
D1(:,2)=cos(4*pi*Xt).*Xt;
noise=-1+2.*rand(n1,1);    % generate uniform noise on the interval [-1 1]
D1(:,3)=-sin(4*pi*Xt).*Xt+.0*noise;
                  
n2=4000;
D2=zeros(n2,3);
D2(:,1)=-.4+.8.*rand(n2,1);
D2(:,2)=-1+2.*rand(n2,1);
noise=-1+2.*rand(n2,1);  % generate uniform noise on the interval [-1 1]
D2(:,3)=zeros(n2,1)+.0*noise;
D=[D1;D2];

end
% [group,path]=Path_Based_Cluster_LandMarks( D ,10, 70 , 15);
