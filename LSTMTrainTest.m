%%%%%%%%%%%%% LSTM for PD data

%%
 
% function [Ypred,acc]=LSTM(xtrain,ytrain,xtest,ytest)
XValidation=[xtrainPD1];
YValidation=[ytrainPD1];

inputSize = 12;
numHiddenUnits =100;
numClasses =5;

layers = [sequenceInputLayer(inputSize)
    bilstmLayer(numHiddenUnits,'OutputMode','last')
    fullyConnectedLayer(numClasses)
    softmaxLayer
    classificationLayer]

maxEpochs =70; %%% 20 for trainign on PD 80 for train on Control
miniBatchSize=50;

options = trainingOptions('adam', ...
    'ExecutionEnvironment','cpu', ...
    'GradientThreshold',1, ...
    'MaxEpochs',maxEpochs, ...
    'ValidationData',{XValidation,YValidation}, ...
    'MiniBatchSize',miniBatchSize, ...
    'SequenceLength','longest', ...
    'Shuffle','never', ...
    'Verbose',0, ...
    'Plots','training-progress');




%%%%%%Training Data for PD 
xtrain=[xtrainPD1];
ytrain=[ytrainPD1];




%%%%%%%%%%% Training and testing LSTM

net = trainNetwork(xtrain,ytrain,layers,options);

%%
miniBatchSize=50;
%%%%%%Testing RA
for i=1:10

xtest=[seq(i).RA'];

%%%% change the number *ones according to the class
ytest=[1*ones(size(seq(i).RA,2),1)];
ytest=categorical(ytest);

YPred = classify(net,xtest,'MiniBatchSize',miniBatchSize);
acc = sum(YPred==ytest)./numel(ytest);

[Acc(i).RA]=acc;
[Predicted(i).RA]=YPred;

end;

MeanRA=mean([Acc.RA])


%%%%%%%% Testing RD
for i=1:10

xtest=[seq(i).RD'];

ytest=[2*ones(size(seq(i).RD,2),1)];
ytest=categorical(ytest);

YPred = classify(net,xtest,'MiniBatchSize',miniBatchSize);
acc = sum(YPred==ytest)./numel(ytest);

[Acc(i).RD]=acc;
[Predicted(i).RD]=YPred;

end;

MeanRD=mean([Acc.RD])

%%%% SA   

for i=1:10

xtest=[seq(i).SA'];

ytest=[3*ones(size(seq(i).SA,2),1)];
ytest=categorical(ytest);

YPred = classify(net,xtest,'MiniBatchSize',miniBatchSize);
acc = sum(YPred==ytest)./numel(ytest);

[Acc(i).SA]=acc;
[Predicted(i).SA]=YPred;

end;

MeanSA=mean([Acc.SA])

%%%%SD
for i=1:10

xtest=[seq(i).SD'];

%%%% change the number *ones accoSDing to the class
ytest=[4*ones(size(seq(i).SD,2),1)];
ytest=categorical(ytest);

YPred = classify(net,xtest,'MiniBatchSize',miniBatchSize);
acc = sum(YPred==ytest)./numel(ytest);

[Acc(i).SD]=acc;
[Predicted(i).SD]=YPred;

end;

MeanSD=mean([Acc.SD])

%%%%%LWb   

for i=1:20

xtest=[seq(i).LWb'];
ytest=[5*ones(size(seq(i).LWb,2),1)];
ytest=categorical(ytest);

YPred = classify(net,xtest,'MiniBatchSize',miniBatchSize);
acc = sum(YPred==ytest)./numel(ytest);

[Acc(i).LWb]=acc;
[Predicted(i).LWb]=YPred;

end;

MeanLWb=mean([Acc.LWb])

%%%%%% LW

for i=1:20

xtest=[seq(i).LW'];

ytest=[5*ones(size(seq(i).LW,2),1)];
ytest=categorical(ytest);

YPred = classify(net,xtest,'MiniBatchSize',miniBatchSize);
acc = sum(YPred==ytest)./numel(ytest);

[Acc(i).LW]=acc;
[Predicted(i).LW]=YPred;

end;

MeanLW=mean([Acc.LW])



 
 
 
 
 




