function [ D ] = ConeandPlane( ~ )


%%cone
n1=8000;
teta=(2*pi)*rand(n1,1);     % Using  spherical coordinates
r=2*rand(n1,1);
x=r.*sin(teta);
y=r.*cos(teta);
z=r;
D1=[x y z];  




%Plane
n2=4000;
D2=zeros(n2,3);
D2(:,1)=-2+4.*rand(n2,1);
D2(:,2)=-2+4.*rand(n2,1);
D2(:,3)=1+.2*D2(:,1);


D=[D1;D2];


end

