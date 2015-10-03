function [ Binary_matrix,path] = Constraint_Dijkstra( D,edge_matrix,weights,sn,ang)
%        Computing Sonstrained version of shortest path
%        ON Entry:
%        edge_matrix           each cell gives the weight of all the nodes conected
%        to a given node
%        weights               weight of edges
%        sn                    landmarks points
%        ang                   angle constrained
%        D                     data points
%        On Exit:
%        path                  path
%        Binary_matrix         each row represent a binary vector where each
%        element of vector defines whether the node is connected to landmrk or not
%
%  Amir Babaeian.
%  Department of Mathematics
%  UC San Diego
%  USA
%
% July 25 2014: Original  version.
n=size(D,1);
mm=size(sn,1);
Binary_matrix=zeros(n,mm);
for ii=1:mm
s=sn(ii);
distance=inf(1,n);                     %%% distance matrix of nodes
t=s;
cost(1:n)=inf;
parents(1:n)=inf;
m=0;
temporary=zeros(1,n);
ss=s;
w=weights;
        for i=1:n
            path{ii,i}=s;
        end
        
    for j=1:n
           distance(edge_matrix{t})=w{t};
           
           for i=1:n
               if   distance(i)+m<cost(i)
                    v1=D(i,:)-D(t,:);
                    v2=D(t,:)-D(ss,:);
                    if t==ss || acos(((v1*v2')/(norm(v1)*norm(v2))))<(ang*pi)/180   % To Check the angels
                   % of two succesive edges
                   
%            v1=norm(D(i,:)-D(t,:));
%            v2=norm(D(t,:)-D(ss,:));
%            v3=norm(D(i,:)-D(ss,:));
%            vv1=D(i,:)-D(t,:);
%            vv2=D(t,:)-D(ss,:);
%            diameter=((2*v1*v2*v3))/(sqrt((v1+v2+v3)*(-v1+v2+v3)*(v1-v2+v3)*(v1+v2-v3)));
%            curvature=1/diameter;
%            if t==ss || (curvature<ang && acos(((vv1*vv2')/(norm(vv1)*norm(vv2))))<pi/2)
                   
                            parents(i)=t;
                            cost(i)=distance(i)+m;
                   end
               end

           end
[m,I]=min(temporary+cost);
if parents(I)~=inf
path{ii,I}=[path{ii,parents(I)} I];
end
temporary(I)=inf;
distance=inf(1,n);
t=I;
ss=parents(t);
if ss==inf,break,end
w{ss}(edge_matrix{ss}==t)=inf;
w{t}(edge_matrix{t}==ss)=inf;
    end
%%%%%%%%%%%%assigning clusters%%%%%%%%%%%%%%%%%
group=zeros(1,n);
for i=1:n
    if i~=s && size(path{ii,i},2)==1
         group(i)=1;
    else
        group(i)=0;
    end
end
Binary_matrix(:,ii)=group'; 

end
end

