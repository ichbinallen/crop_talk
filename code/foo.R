library(parallel)

no_cores <- 5 # Number of Cores

cl <- makeCluster(no_cores) # Initiate Cluster

# Export Necessary Functions
toexport = c("tlp_fold", ... )
clusterExport(cl, toexport)

parApply(cl = cl, X = CVFolds ,MARGIN = 2, FUN = tlp_fold, data = data)
