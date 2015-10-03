function [ D ] =  RoseandCircle( ~ )

n1=1500;
teta=(2*pi)*randn(n1,1);     % Using  spherical coordinates
x=cos(teta/.5).*sin(teta);
y=cos(teta/.5).*cos(teta);
D1=[x y];  



n1=500;
teta=(2*pi)*randn(n1,1);     % Using  spherical coordinates
x=.5*sin(teta);
y=.5*cos(teta);
D2=[x y];

n1=500;
teta=(2*pi)*randn(n1,1);     % Using  spherical coordinates
x=.5*sin(teta)+.5;
y=.5*cos(teta)+.5;
D3=[x y];

% n1=2500;
% teta=(2*pi)*randn(n1,1);     % Using  spherical coordinates
% x=cos(3*teta).*sin(teta);
% y=cos(3*teta).*cos(teta);
% D2=[x y]; 

 D=[D1;D2;D3];

end

% [group,path]=Path_Based_Cluster_LandMarks( D ,30 , 70 , 15 , 2 );
