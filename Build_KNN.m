function [edge_matrix, weights]=Build_KNN(D,k)
%        Bulding K-nearest-neighbour graph
%        ON Entry:
%        D           Input Data
%        k           Parameter K for K nearest neighbour graph
%        On exit: 
%        edge_matrix  Find k nearest neighbours of each node
%        weight       Gives weights of conected edges
%  Amir Babaeian.
%  Department of Mathematics
%  UC San Diego
%  USA
%
% July 25 2014: Original  version.
[n1,d1] = knnsearch(D,D,'K',k+1,'Distance','euclidean');
edge_matrix=n1(:,2:end);       % matrix of conected edges to each node
weights=d1(:,2:end);           % matrix of distance between conected nodes
end