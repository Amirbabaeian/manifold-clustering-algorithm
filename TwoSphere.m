function [ D ] = TwoSphere( ~ )


n1=8000;
u=rand(n1,1);
v=rand(n1,1);
r=1;
phi=2*pi*u;
teta=acos(2*v-1);
z=r*cos(teta);
x=sqrt(r^2-z.^2).*cos(phi);
y=sqrt(r^2-z.^2).*sin(phi);
D1=[x y z];

u=rand(n1,1);
v=rand(n1,1);
r=1;
phi=2*pi*u;
teta=acos(2*v-1);
z=r*cos(teta);
x=sqrt(r^2-z.^2).*cos(phi);
y=sqrt(r^2-z.^2).*sin(phi)+1;
D2=[x y z];

D=[D1;D2];

% n1=50;
% D1=zeros(n1*n1,3);
% r=.1;
% for i=1:n1
% phi=pi*rand(n1,1);
% teta=(pi)*randn(n1,1);     % Using  spherical coordinates
% x=r*sin(phi(i))*cos(teta);
% y=r*sin(phi(i))*sin(teta);
% z=r*repmat(cos(phi(i)), n1,1);
% D1((i-1)*n1+1:i*n1,:)=[x y z];  
% end
% 
% 
% n1=50;
% D2=zeros(n1*n1,3);
% r=.1;
% for i=1:n1
% phi=pi*rand(n1,1);
% teta=(pi)*randn(n1,1);     % Using  spherical coordinates
% x=.1+r*sin(phi(i))*cos(teta);
% y=r*sin(phi(i))*sin(teta);
% z=r*repmat(cos(phi(i)), n1,1);
% D2((i-1)*n1+1:i*n1,:)=[x y z];  
% end
% 
% 
% D=[D1;D2];

end

% [group,path]=Path_Based_Cluster_LandMarks( D ,20 , 50 , 15 , 2 );

