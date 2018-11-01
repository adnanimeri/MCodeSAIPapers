X = [3 10 15 20  40 50  60  80 90];
Y = [1.0  0.9    0.75    0.55    0.35  0.2  0.1 0.05 0.01];
mdl = fitlm(X,Y);
stan = std(X)
 plot(mdl)
 xlabel('SC stakeholders')
 ylabel('Level of Trust in SC')

 

