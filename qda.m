%% Initialization
clear ; close all;

%% Load Data
data = load('datatraining.txt');
X = data(:, [1, 2, 3, 4, 5]); 
y = data(:, 6);


[mean_0, mean_1, sigma_0, sigma_1, priori_0, priori_1 ] = qdac(X, y);
printf('The mean from training set for y=0:\n')
disp(mean_0);
printf('The mean from training set for y=1:\n')
disp(mean_1);
printf('The sigma from training set for y=0:\n');
disp(sigma_0);
printf('The sigma from training set for y=1:\n');
disp(sigma_1);

sigma1_inv = inv(sigma_1);
sigma0_inv = inv(sigma_0);

testdata = load('datatest.txt');
testX = testdata(:, [1, 2, 3, 4, 5]);
testY = testdata(:, 6);
discriminant_1 = zeros(size(testX, 1), 1);
discriminant_0 = zeros(size(testX, 1), 1);
for i=1:size(testX, 1)
    x = testX(i,:);
    discriminant_1(i) = -0.5 * log(det(sigma_1)) - 0.5 * (x - mean_1) * sigma1_inv * (x - mean_1)' + log(priori_1);
end
for i=1:size(testX, 1)
    x = testX(i,:);
    discriminant_0(i) = -0.5 * log(det(sigma_0)) - 0.5 * (x - mean_0) * sigma0_inv * (x - mean_0)' + log(priori_0);
end
qdac = (discriminant_1 > discriminant_0);
accuracy = mean(double(qdac == testY)) * 100;
fprintf('Training Accuracy of QDA classifier for test data set 1 is: %f \n', accuracy);

testdata = load('datatest2.txt');
testX = testdata(:, [1, 2, 3, 4, 5]);
testY = testdata(:, 6);
discriminant_1 = zeros(size(testX, 1), 1);
discriminant_0 = zeros(size(testX, 1), 1);
for i=1:size(testX, 1)
    x = testX(i,:);
    discriminant_1(i) = -0.5 * log(det(sigma_1)) - 0.5 * (x - mean_1) * sigma1_inv * (x - mean_1)' + log(priori_1);
end
for i=1:size(testX, 1)
    x = testX(i,:);
    discriminant_0(i) = -0.5 * log(det(sigma_0)) - 0.5 * (x - mean_0) * sigma0_inv * (x - mean_0)' + log(priori_0);
end
qdac = (discriminant_1 > discriminant_0);
accuracy = mean(double(qdac == testY)) * 100;
fprintf('Training Accuracy of QDA classifier for test data set 2 is: %f \n', accuracy);
