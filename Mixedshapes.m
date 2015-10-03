function [ D ] = Mixedshapes( ~ )


%%cone
n1=1200;
x=-2+2*rand(n1,1);
y=rand(n1,1);
z=x.^2-2*y.^2+2*x+3.*y;
D1=[x y z];  



n1=400;
teta=(2*pi)*randn(n1,1);     % Using  spherical coordinates
x=.8*sin(teta);
y=.5*ones(n1,1);
z=.8*cos(teta);
D2=[x y z]; 

n1=800;
x=-1+2*rand(n1,1);
y=-1+2*rand(n1,1);
z=zeros(n1,1);
D3=[x y z];  


% %Plane
% n2=2000;
% D2=zeros(n2,3);
% D2(:,1)=-2+4.*rand(n2,1);
% D2(:,2)=-2+4.*rand(n2,1);
% D2(:,3)=1+.2*D2(:,1);


D=[D1;D2;D3];


end

