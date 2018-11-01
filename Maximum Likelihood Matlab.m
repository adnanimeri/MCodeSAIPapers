
%Measuring the likelihood ration test

% For performing these test we have conducted our surveys and gathered information about these two models 
%The first model is based on centralized approach
%The second model is based on peer to perr decentralized  

% Our dataset are as follos
% 1) We perform our measurmets in context of trust for centralized approaches 


x = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20]

y =  [ 3 2 1 5 2 1 1 2 5 3 1 5 2 3 5 4 3 2  1 4 ]

    

	 nLogLGradFun = @(theta) deal(-sum(-gammaln(theta(1)) - ...
    theta(1)*log(theta(2) + x) + (theta(1)-1)*log(y) - ...
    y./(theta(2)+x)),...
    -[sum(-psi(theta(1))+log(y./(theta(2)+x)));...
    sum(1./(theta(2)+x).*(y./(theta(2)+x)-theta(1)))]);
	 

theta0 = randn(2,1); % Initial value for optimization
uLB = [0 -min(x)];   % Unrestricted model lower bound
uUB = [Inf Inf];     % Unrestricted model upper bound
options = optimoptions('fmincon','Algorithm','interior-point',...
    'FunctionTolerance',1e-10,'Display','off',...
    'SpecifyObjectiveGradient',true); % Optimization options

[uMLE,uLogL] = fmincon(nLogLGradFun,theta0,[],[],[],[],uLB,uUB,[],options);
uLogL = -uLogL;


Application of likelihood test to see if the data given provides enough evidence for 
[h,pValue,stat] = lratiotest(uLogL,rLogL,dof)

[h,pValue,stat] = lratiotest(uLogL,rLogL,dof)

y =  [ 0.3 0.45 0.62 0.5 0.9 0.9 0.9 0.9 0.8 0.7 0.8 0.95 0.8 0.97 0.75 0.8 0.9 0.98  0.7 0.68 ]
