%% Initialization
clear ; close all;

%% Load Data
data = load('datatraining.txt');
X = data(:, [1, 2, 3, 4, 5]); 
y = data(:, 6);

%% ==================== Part 1: Plotting ====================
%  We start the exercise by first plotting the data to understand the 
%  the problem we are working with.

fprintf(['Plotting data with + indicating (y = 1) examples and o ' ...
         'indicating (y = 0) examples.\n']);

%plotData(X, y);
%plotMultiData(X, y);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;


%% ============ Linear Discriminant Analysis ============
[mean_0, mean_1, sigma, priori_0, priori_1 ] = ldac(X, y);
printf('The mean from training set for y=0:\n')
disp(mean_0);
printf('The mean from training set for y=1:\n')
disp(mean_1);
printf('The value of sigma from training set:\n');
disp(sigma);
sigmaInv = inv(sigma);

%% ============ LDA Test on data set 1 ============
testdata = load('datatest.txt');
testX = testdata(:, [1, 2, 3, 4, 5]);
testY = testdata(:, 6);
discriminant_1 = testX * sigmaInv * mean_1' - 0.5 * mean_1 * sigmaInv * mean_1' + log(priori_1);
discriminant_0 = testX * sigmaInv * mean_0' - 0.5 * mean_0 * sigmaInv * mean_0' + log(priori_0);
ldac = (discriminant_1 > discriminant_0);
accuracy = mean(double(ldac == testY)) * 100;
fprintf('Training Accuracy of LDA classifier for test data set 1 is: %f \n', accuracy);

%% ============ LDA Test on data set 2 ============
testdata = load('datatest2.txt');
testX = testdata(:, [1, 2, 3, 4, 5]);
testY = testdata(:, 6);
discriminant_1 = testX * sigmaInv * mean_1' - 0.5 * mean_1 * sigmaInv * mean_1' + log(priori_1);
discriminant_0 = testX * sigmaInv * mean_0' - 0.5 * mean_0 * sigmaInv * mean_0' + log(priori_0);
ldac = (discriminant_1 > discriminant_0);
accuracy = mean(double(ldac == testY)) * 100;
fprintf('Training Accuracy of LDA classifier for test data set 2 is: %f \n', accuracy);
%hold off;
