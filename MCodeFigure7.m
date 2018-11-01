X = [3 5 7 10 12 15 20 30 40 50 60 70 80 90];

Y = [1.0 0.95 0.9  0.8  0.7  0.6  0.5  0.4  0.3  0.2 0.15 0.1 0.005 0.0001];


std(X)

plot(X,fliplr(Y))
xlabel('SC stakeholders')
ylabel('Level of Trust in SC')
hold 

plot(fliplr(X),fliplr(Y))
xlabel('SC stakeholders')
ylabel('Level of Trust in SC')

legend('Trust(Y)','Trust(X)')
legend('Trust(decentralized)','Trust(centralized)')