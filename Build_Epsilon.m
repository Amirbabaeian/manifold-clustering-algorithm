function [edge_matrix, weights]=Build_Epsilon(D,ep)
%        Bulding K-nearest-neighbour graph
%        ON Entry:
%        D           Input Data
%        ep          Parameter ep( radius of ball for epsilon graph)
%        On exit: 
%        edge_matrix  Find k nearest neighbours of each node
%        weight       Compute the weights of conected edges
%  Amir Babaeian
%  Department of Mathematics
%  UC San Diego
%  USA
%
% July 25 2014: Original  version.
%%% computing epsilon graph
n=size(D,1);
for i=1:n
    edge_matrix{i}=[];
    weights{i}=[];
    
    for j=1:n
        dist=norm(D(i,:)-D(j,:));
        if dist<=ep && dist>=.5*ep && j~=i
           edge_matrix{i}=[edge_matrix{i} j]; % find the neighbours inside the ball ep ball 
           weights{i}=[weights{i} dist];      % and outside the .5ep ball

        end
    end
end     


end