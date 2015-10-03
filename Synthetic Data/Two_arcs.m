function [ D, tt] = Two_arcs( n )

n1=n/2;

tt1=(pi/2)*rand(n1,1)+pi/4;            % Using  spherical coordinates

x1=cos(tt1);
y1=sin(tt1);
D1=[x1 y1];  

tt2=(pi/2)*rand(n1,1)-pi/4;
x2=cos(tt2)-1;
y2=sin(tt2)+1;
D2=[x2 y2];
D=[D1;D2];
tt=[tt1;tt2];

% n1=2500;
% teta=(2*pi)*randn(n1,1);     % Using  spherical coordinates
% x=cos(3*teta).*sin(teta);
% y=cos(3*teta).*cos(teta);
% D2=[x y];
% D=[D1;D2;D3];

end

% [group,path]=Path_Based_Cluster_LandMarks( D ,30 , 70 , 15 , 2 );
