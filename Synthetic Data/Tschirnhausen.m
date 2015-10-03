function [ D ] =  Tschirnhausen( ~ )

n1=6000;
t=-2+4*rand(n1,1);     % Using  spherical coordinates

x=t.^3-3*t;
y=-t.^2;
D=[x y];  




% n1=2500;
% teta=(2*pi)*randn(n1,1);     % Using  spherical coordinates
% x=cos(3*teta).*sin(teta);
% y=cos(3*teta).*cos(teta);
% D2=[x y];

%  D=[D1;D2;D3];

end

% [group,path]=Path_Based_Cluster_LandMarks( D ,30 , 70 , 15 , 2 );
