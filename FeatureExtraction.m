function [Coef,target] = extractMech3(data,classCodes,winSize,pDelay)

%This function extracts the features from each channel of the userInfo File
%
%Inputs:  data, training data (NxS)
%           N: length of data
%           S: number of sensors
%         classCodes, training motion codes
%         winSize, anlysis window size, in number of samples
%         pDelay, number of samples of the delay window
%
%Outputs: Coef, the training coefficients
%         allTestCoef, the feature coefficients
%         target, the training targets
%

%  
%nfeat = 6; %  Default order of mech model

classVec = 1:max(classCodes);
[~,sensors] = size(data);

totwin = [0,0];

nclass = max(classVec);
Coef = [];
target = [];
for class = 1:nclass
    classCoef = [];
    
    GoodData = data(classCodes==class,:); %Only choose data that is 'on' / selects data for each class
    
    for s = 1:sensors
        % Partition the data into a matrix of nWin columns of analysis windows of length winSize
        Fdata = enframe(GoodData(:,s),winSize)';
        if isempty(Fdata)
            continue
        end
        init = Fdata(1,:);
        final = Fdata(winSize,:);
        minimum = min(Fdata);
        maximum = max(Fdata);
        datamean = mean(Fdata);
        stddev = std(Fdata);
        feats = [minimum' maximum' datamean' stddev'];

        %feats = [ARfeats,tdfeatsE_inprogress(Fdata,desiredTD)];
        
        % Put the features from each channel into the appropriate
        % columns of the aggregate feature matrix
        classCoef = [classCoef,feats]; %#ok<AGROW>
    end
    nWin = size(Fdata,2);
    totwin = totwin + nWin;
    Coef = [Coef;classCoef]; %#ok<AGROW>
    target = [target,zeros(1,nWin)+class]; %#ok<AGROW>
end

