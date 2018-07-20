library(dbscan)
kNNdistplot(iris[-5], k = 5)
 abline(h=.5, col = "red", lty=2)
res <- dbscan(iris[-5], eps = .5, minPts = 5)
 res
hullplot(iris[-5], res)

 pairs(iris, col = res$cluster + 1L)
 plot(iris[-5], col=res$cluster)
 points(iris[-5][res$cluster==0,], pch = 3, col = "grey")
predict(res, x[1:25,], data = x)

