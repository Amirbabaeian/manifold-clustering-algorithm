##Source code for papers titled:
**Nonlinear subspace clustering using curvature constrained distances. Pattern Recognition Letters, 68, 118-125.**
+ Babaeian, A.
+ Babaee, M.
+ Bayestehtashk, A.
+ Bandarabadi, M. 

Please acknowledge and cite the related papers.

```
 Amir Babaeian
 Email: ababaeian@ucsd.edu
 Alireza ByestehTashk
 Email: bayesteh@ohsu.edu
```

Thanks to Professor Ery Arias-Castro for his advices during the project. 

##Related articles:
ANGLE CONSTRAINED PATH FOR CLUSTERING OF MULTIPLE MANIFOLDS, International conference on image processing(ICIP 2015)

Multiple Manifold Clustering Using Curvature Constrained Path. PloS one, 10(9), e0137986.

![alt text](http://i68.tinypic.com/2zylg5i.png "Journal Logo")
[Journal link] (http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0137986)

##How to use the code:

In order to use the code you should run the demo file as follow:

Example:
```matlab
% labels = Path_Based_Clustering(data, k, no_landmarks, angle_constraint, no_clusters);
  labels = Path_Based_Clustering(D, 60, 10, 15, 2);
% Labels are the output of clustering algorithm.
```

| ON Entry | Description          |
| ------------- | ----------- |
| data   | N*P data (N should be the number of data points and P is the number of variables)|
| k     |  Radius of epsilon graph or no neighbours |
| no_landmarks     |  Number of landmarks  |
| angle_constraint  |  Angel constraint used in shortest path algorithm|
| no_clusters   |  Number of clusters  |

|On Exit | Description  |
| ------------- | ----------- |
| labels      | Labels that computed using result of clustering algorithm  |


