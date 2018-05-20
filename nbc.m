% NAIVE BAYES CLASSIFIER

clear ; close all; clc
tic
disp('--- start ---')
distr='kernel';

% read data
data = load('datatraining.txt');
X = data(:, [1, 2, 3, 4, 5]); 
y = data(:, 6);
% test set
testdata = load('datatest.txt');
testX = testdata(:, [1, 2, 3, 4, 5]); 
testY = testdata(:, 6);

yu=unique(y);
nc=length(yu); % number of classes
ni=size(X,2); % independent variables
ns=length(testY); % test set

% compute class probability
for i=1:nc
    fy(i)=sum(double(y==yu(i)))/length(y);
end

% kernel distribution
% probability of test set estimated from training set
for i=1:nc
    for k=1:ni
        xi=X(y==yu(i),k);
        ui=testX(:,k);
        fuStruct(i,k).f=ksdensity(xi,ui);
    end
end
% re-structure
for i=1:ns
    for j=1:nc
        for k=1:ni
            fu(j,k)=fuStruct(j,k).f(i);
        end
    end
    P(i,:)=fy.*prod(fu,2)';
end

% get predicted output for test set
[pv0,id]=max(P,[],2);
for i=1:length(id)
    pv(i,1)=yu(id(i));
end

% compare predicted output with actual output from test data
confMat=myconfusionmat(testY,pv);
disp('confusion matrix:')
disp(confMat)
conf=sum(pv==testY)/length(pv);
disp(['accuracy = ',num2str(conf*100),'%'])

testdata = load('datatest2.txt');
testX = testdata(:, [1, 2, 3, 4, 5]); 
testY = testdata(:, 6);

ns=length(testY); % test set

% probability of test set estimated from training set
for i=1:nc
    for k=1:ni
        xi=X(y==yu(i),k);
        ui=testX(:,k);
        fuStruct(i,k).f=ksdensity(xi,ui);
    end
end
% re-structure
for i=1:ns
    for j=1:nc
        for k=1:ni
            fu(j,k)=fuStruct(j,k).f(i);
        end
    end
    P(i,:)=fy.*prod(fu,2)';
end

% get predicted output for test set
[pv0,id]=max(P,[],2);
for i=1:length(id)
    pv(i,1)=yu(id(i));
end

% compare predicted output with actual output from test data
confMat=myconfusionmat(testY,pv);
disp('confusion matrix:')
disp(confMat)
conf=sum(pv==testY)/length(pv);
disp(['accuracy = ',num2str(conf*100),'%'])

toc
