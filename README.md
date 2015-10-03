Source code for paper titled: ANGLE CONSTRAINED PATH FOR CLUSTERING OF MULTIPLE MANIFOLDS, International conference on image processing(ICIP 2015)
Note: This file is not a final version and might be subject to some errors.
Amir Babaeian
Email: ababaeian@ucsd.edu
Thanks to my Coauthors: Mohammadreza Babaee, Alireza Bayestehtashk, Mojtaba Bandarabadi, Amin Ghadesi
And Professor Ery Arias-Castro for his advises.

Related articles:
Babaeian A, Bayestehtashk A, Bandarabadi M (2015) Multiple Manifold Clustering Using Curvature Constrained Path. PLoS ONE 10(9): e0137986. doi: 10.1371/journal.pone.0137986
Amir Babaeian, Mohammadreaza Babaee, Alireza Bayestehtashk, Mojtaba Bandarabadi, Nonlinear Subspace Clustering Using Curvature Constrained Distances, Pattern Recognition Letters, Available online 25 September 2015, ISSN 0167-8655, http://dx.doi.org/10.1016/j.patrec.2015.09.001.



Use of code:
You can use the code but should acknowledge the author of related paper and cite the relate paper.

In order to use the code you should run demo file as follow:
Example:
% labels = Path_Based_Clustering( data, k, no_landmarks,angle_constraint,no_clusters );
labels = Path_Based_Clustering( D, 60, 10,15,2);

% Labels are the output of clustering algorithm.


Description of input and output parameters:
%        Run path based clustering algorithm
%        ON Entry:
%        data                  n*p data(N should be the number of data points and
%                              p is the number of variables)
%        k                     Radius of epsilon graph or no neighbours
%        no_landmarks          Number of landmarks
%        angle_constraint      Angel constraint used in shortest path algorithm
%        no_clusters           Number of clusters
%        On Exit:
%        labels                Labels that computed using result of clustering
%                              algorithm
%
%  Amir Babaeian.
%  Department of Mathematics
%  UC San Diego
%  USA
%
% May 05 2015: Original  version.



