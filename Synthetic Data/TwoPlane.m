function [ D ] = TwoPlane( ~ )

n1=8000;
D1=zeros(n1,3);
D1(:,1)=-.4+.8.*rand(n1,1);
D1(:,2)=-1+2.*rand(n1,1);
% D1(:,3)=.8+3.5*D1(:,1);
D1(:,3)=1-5*D1(:,1);

                  
n2=8000;
D2=zeros(n2,3);
D2(:,1)=-.4+.8.*rand(n2,1);
D2(:,2)=-1+2.*rand(n2,1);
D2(:,3)=1;
D=[D1;D2];

end

% [group,path]=Path_Based_Cluster_LandMarks( D ,30 , 70 , 15 , 2 );
