%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LDA	Perform a linear discriminant analysis
%
%	Inputs: TrainData,TestData 			- Train,test data arranged in columns
%			TrainClass,TestClass 		- vectors of class membership
%	Outputs:PeTrain,PeTest 				- probability of error
%			TrainPredict,TestPredict 	- predicted values
%			Wg,Cg 						- LDA weights

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [PeTrain,PeTest,TrainPredict,TestPredict,Wg,Cg, percent] = ldaE(TrainData,TestData,TrainClass,TestClass)t
N = size(TrainData,1);
Ptrain = size(TrainData,2);
Ptest = size(TestData,2);

sc = std(TrainData,[],2);
TrainData =  TrainData + bsxfun(@times,sc./10000,randn(size(TrainData)));

K = max(TrainClass);

%%-- Compute the means and the pooled covariance matrix --%%
C = zeros(N);
Mi = zeros(N,K);
for l = 1:K;
    idx = find(TrainClass==l);
    Mi(:,l) = mean(TrainData(:,idx),2);
    C = C + cov((TrainData(:,idx)-Mi(:,l)*ones(1,length(idx)))');
end

C = C./K; %average covariances (homoscedasticity assumption)
Pphi = 1/K; %probability of each class

Wg = zeros(size(Mi)); %weight
Cg = zeros(1,size(Mi,2)); %constant

for i=1:K
    Wg(:,i) = pinv(C)*Mi(:,i); % C\Mi(:,i);
    Cg(:,i) = -1/2*Mi(:,i)'*Wg(:,i) + log(Pphi);
end

%%-- Compute the decision functions --%%
Atr = TrainData'*Wg + ones(Ptrain,1)*Cg;
Ate = TestData'*Wg + ones(Ptest,1)*Cg;
percent = Ate;
AAtr = compet(Atr');
TrainPredict = vec2ind(AAtr);
errtr = sum(TrainClass~=TrainPredict');
%errtr = sum(sum(abs(AAtr-ind2vec(TrainClass))))/2;
netr = errtr/Ptrain;
PeTrain = 1-netr;

AAte = compet(Ate');
TestPredict = vec2ind(AAte);
errte = sum(TestClass~=TestPredict');
%errte = sum(sum(abs(AAte-ind2vec(TestClass))))/2;
nete = errte/Ptest;
PeTest = 1-nete;

end
