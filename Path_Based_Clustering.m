function lables = Path_Based_Clustering( D, ep, l,ang, cl)
%        Path based clustering algorithm
%        ON Entry:
%        D                     n*p data(N should be the number of data points and
%                              p is the number of variables)
%        ep                    Radius of epsilon graph
%        l                     Number of landmarks
%        ang                   Angel constraint used in shortest path algorithm
%        c                     Number of clusters
%        On Exit:
%        labels                Lables that computed using result of clustering
%                              algorithm
%
%  Amir Babaeian.
%  Department of Mathematics
%  UC San Diego
%  USA
%
% July 25 2014: Original  version.

n=size(D,1);
%%%%%%%%%%%%%%%%%%% Build in epsilon graph %%%%%%%%%%%%%%
%[edge_matrix, weights]=Build_Epsilon(D,ep);    %  epsilon graph
[edge_matrix, weights]=Build_KNN(D,ep);      %  KNN graph
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sn=randperm(n,l);                    % choose landmarks randomly
%%%%%%%%%%%%%% applying constrained shortest path algorithm %%%%%%%%%%%%%%%
 %[Binary_matrix,path] = Constraint_Dijkstra(D,edge_matrix,weights,sn,ang);
 [Binary_matrix,path] = Constraint_Dijkstra1(D,edge_matrix,weights,sn,ang);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[C,ia,ic] = unique(Binary_matrix,'rows');
%%%%%%%%%%%%%%%%%%%%%% clustering %%%%%%%%%%%%%%%%%%%%%%%%
% [K,E]=kmeansplus(C',cl);              % Apply K-Means++ on embeded data
% K=K';
%%%%%%%%%%%%%%%%%%%%% Inestead of K-Means we can use hierarchical clustering
% with complete linkage
                 
 BD=pdist(C,'euclidean'); % Euclidean distance of correlation matrix
 Z = linkage(BD,'complete');
 K = cluster(Z,'maxclust',cl);
 
for i=1:size(K,1)
    ic(ic==i)=K(i);
end
lables=ic;                  % Give the labels of clustering algorithm
end
                 
                 

