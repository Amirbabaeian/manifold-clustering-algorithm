Source code for papers titled:
Babaeian, A., Babaee, M., Bayestehtashk, A., & Bandarabadi, M. (2015). Nonlinear subspace clustering using curvature constrained distances. Pattern Recognition Letters, 68, 118-125.


Please acknowledge and cite the related papers.

Amir Babaeian
Email: ababaeian@ucsd.edu
Thanks to Professor Ery Arias-Castro for his advises during the project and  my Coauthors: Mohammadreza Babaee, Alireza Bayestehtashk, Mojtaba Bandarabadi, Amin Ghadesi.


Related articles:
ANGLE CONSTRAINED PATH FOR CLUSTERING OF MULTIPLE MANIFOLDS, International conference on image processing(ICIP 2015)
Babaeian, A., Bayestehtashk, A., & Bandarabadi, M. (2015). Multiple Manifold Clustering Using Curvature Constrained Path. PloS one, 10(9), e0137986.
Journal link: http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0137986



How to use the code:

In order to use the code you should run demo file as follow:
Example:
% labels = Path_Based_Clustering( data, k, no_landmarks,angle_constraint,no_clusters );
labels = Path_Based_Clustering( D, 60, 10,15,2);

% Labels are the output of clustering algorithm.


Description of input and output parameters:
%        Run path based clustering algorithm
%        ON Entry:
%        data     ----             n*p data(N should be the number of data points and p is the number of variables)
%        k        ---              Radius of epsilon graph or no neighbours
%        no_landmarks    ----      Number of landmarks
%        angle_constraint ----     Angel constraint used in shortest path algorithm
%        no_clusters   ----        Number of clusters
%        On Exit:
%        labels     ----           Labels that computed using result of clustering algorithm

%  Amir Babaeian.
%  Department of Mathematics
%  UC San Diego
%  USA
%
% May 05 2015: Original  version.



