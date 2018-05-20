%% Initialization
clear ; close all; clc

%% Load Data
%  The first two columns contains the exam scores and the third column
%  contains the label.

data = load('datatraining.txt');
X = data(:, [1, 2, 3, 4, 5]); 
y = data(:, 6);


%% ============ Fisher's Discriminant Analysis ============
a = fdac(X,y);
reducedX = X * a(:,1);
[mu_0, mu_1, sigma, pi_0, pi_1 ] = ldac(reducedX, y);
sigmaInv = inv(sigma);

%% ============ FDA Test on data set 1 ============
testdata = load('datatest.txt');
testX = testdata(:, [1, 2, 3, 4, 5]);
testY = testdata(:, 6);
a = fdac(testX,testY);
testX = testX * a(:,1);

discriminant_1 = testX * sigmaInv * mu_1' - 0.5 * mu_1 * sigmaInv * mu_1' + log(pi_1);
discriminant_0 = testX * sigmaInv * mu_0' - 0.5 * mu_0 * sigmaInv * mu_0' + log(pi_0);
ldac = (discriminant_1 > discriminant_0);
accuracy = mean(double(ldac == testY)) * 100;
fprintf('Training Accuracy of LDA classifier for test data set 1 is: %f \n', accuracy);

%% ============ FDA Test on data set 2 ============
testdata = load('datatest2.txt');
testX = testdata(:, [1, 2, 3, 4, 5]);
testY = testdata(:, 6);
a = fdac(testX,testY);
testX = testX * a(:,1);

discriminant_1 = testX * sigmaInv * mu_1' - 0.5 * mu_1 * sigmaInv * mu_1' + log(pi_1);
discriminant_0 = testX * sigmaInv * mu_0' - 0.5 * mu_0 * sigmaInv * mu_0' + log(pi_0);
ldac = (discriminant_1 > discriminant_0);
accuracy = mean(double(ldac == testY)) * 100;
fprintf('Training Accuracy of LDA classifier for test data set 2 is: %f \n', accuracy);
%hold off;
