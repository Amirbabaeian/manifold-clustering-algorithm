
%        Run path based clustering algorithm
%        ON Entry:
%        data                  n*p data(N should be the number of data points and
                                        %                              p is the number of variables)
%        k                     Radius of epsilon graph or no neighbours
%        no_landmarks          Number of landmarks
%        angle_constraint      Angel constraint used in shortest path algorithm
%        no_clusters           Number of clusters
%        On Exit:
%        labels                Lables that computed using result of clustering
%                              algorithm
%
%  Amir Babaeian.
%  Department of Mathematics
%  UC San Diego
%  USA
%
% May 05 2015: Original  version.
% labels = Path_Based_Clustering( data, k, no_landmarks,angle_constraint, No_clusters);





%%% Example %%%%%
clc
clear all
%[ D ] = Mixedshapes;
[D] = Dollarsign;
% labels = Path_Based_Clustering( data, k, no_landmarks,angle_constraint,no_clusters );
labels = Path_Based_Clustering( D, 60, 10,15,2);

%%%%%%%%%%%%visualization of clusters%%%%%%%%%%%%%%%%%
C1=find(labels==1);
C2=find(labels==2);
%C3=find(labels==3);
cluster1=D(C1,:);
cluster2=D(C2,:);
%cluster3=D(C3,:);
subplot(1,2,2);
scatter3(cluster1(:,1),cluster1(:,2),cluster1(:,3), '.','r');
hold on
scatter3(cluster2(:,1),cluster2(:,2),cluster2(:,3), '.','b');
%hold on
%scatter3(cluster3(:,1),cluster3(:,2),cluster3(:,3), '.','g');
hold off
% title('Path Based Clustering');
axis equal

subplot(1,2,1);
scatter3(D(:,1),D(:,2),D(:,3), '.','b');
axis equal