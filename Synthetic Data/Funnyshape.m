function [ D ] = Funnyshape( ~ )

n1=1000;
x=-1+2*rand(n1,1);
y=-1+2*rand(n1,1);
z=x.^2-y.^2;
D1=[x y z];

n2=1000;
u=rand(n2,1);
v=rand(n2,1);
r=.5;
phi=2*pi*u;
teta=acos(2*v-1);
z=r*cos(teta);
x=sqrt(r^2-z.^2).*cos(phi);
y=sqrt(r^2-z.^2).*sin(phi);
D2=[x y z];
D=[D1;D2];

%%%Generate uniformly random in polar cordinate
 teta=0:5*pi/1000000:5*pi;
 teta=teta';
 x=cos(teta/5).*sin(teta);
 y=cos(teta/5).*cos(teta);
 D1=[x y];
 
 n1=2000;
 k=1000000*rand(n1,1);
 k=floor(k);
 D=D1(k,:);

end

% [group,path]=Path_Based_Cluster_LandMarks( D ,30 , 70 , 15 , 2 );
