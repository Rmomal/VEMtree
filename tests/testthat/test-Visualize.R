Sigma=generate_missing_data(n=100,p=10,r=1,type="scale-free", plot=FALSE)$Sigma
g=ggimage(Sigma)

test_that("ggimage", {
  expect_equal(ncol(g$data),3)
})

data=generate_missing_data(n=100,p=10,r=1,type="scale-free", plot=FALSE)
PLNfit<-norm_PLN(data$Y)
MO<-PLNfit$MO
SO<-PLNfit$SO
sigma_O=PLNfit$sigma_O
#-- use true clique for example
initClique=data$TC
#-- initialize the VEM
initList=initVEM(cliqueList=initClique,sigma_O, MO,r=1 )
nestorFit=nestorFit( MO,SO, initList=initList, maxIter=3,verbatim=1)
nestorFitTrack=nestorFit(MO,SO, initList=initList, maxIter=3,verbatim=1,trackJ = TRUE)
#-- obtain criteria
AUC=auc(nestorFit$Pg,data$G)
criteria=ppvtpr(nestorFit$Pg,r=1, data$G)
perf=plotPerf(nestorFit$Pg, data$G,r=1)
conv=plotConv(nestorFit)
convTrack=plotConv(nestorFitTrack)
test_that("auc", {
  expect_length(AUC,1)
})
test_that("ppvtpr", {
  expect_length(criteria,8)
})
test_that("perf", {
  expect_length(perf$grobs,3)
})
test_that("conv", {
  expect_length(conv$grobs,2)
})
test_that("convTrack", {
  expect_length(convTrack$grobs,2)
})
