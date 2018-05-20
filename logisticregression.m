%% Initialization
clear ; close all;

%% Load Data
data = load('datatraining.txt');
X = data(:, [1, 2, 3, 4, 5]); 
y = data(:, 6);

%% ==================== Part 1: Plotting ====================
%  We start the exercise by first plotting the data to understand the 
%  the problem we are working with.

%fprintf(['Plotting data with + indicating (y = 1) examples and o indicating (y = 0) examples.\n']);
%plotMultiData(X, y);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

%% ============ Part 2: Compute Cost and Gradient ============
%  In this part of the exercise, you will implement the cost and gradient
%  for logistic regression. You neeed to complete the code in 
%  costFunction.m

% Sigmoid function test
fprintf('Sigmoid function test: \n');
fprintf(' %f \n', sigmoid([-1000; 0; 100]));
fprintf('\nProgram paused. Press enter to continue.\n');
pause;

%  Setup the data matrix appropriately, and add ones for the intercept term
[m, n] = size(X);

% Add intercept term to x and X_test
X = [ones(m, 1) X];

% Initialize fitting parameters
initial_theta = zeros(n + 1, 1);

% Compute and display initial cost and gradient
[cost, grad] = costFunction(initial_theta, X, y);

fprintf('Cost at initial theta (zeros): %f\n', cost);
fprintf('Gradient at initial theta (zeros): \n');
fprintf(' %f \n', grad);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;


%% ============= Part 3: Optimizing using fminunc  =============
%  In this exercise, you will use a built-in function (fminunc) to find the
%  optimal parameters theta.

%  Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 400);

%  Run fminunc to obtain the optimal theta
%  This function will return theta and the cost 
[theta, cost] = ...
	fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);

% Print theta to screen
fprintf('Cost at theta found by fminunc: %f\n', cost);
fprintf('theta: \n');
fprintf(' %f \n', theta);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

%% ============== Part 4: Predict and Accuracies ==============
%  After learning the parameters, you'll like to use it to predict the outcomes
%  on unseen data.
%
%  Furthermore, you will compute the training and test set accuracies of 
%  our model.

%% ============== Test data set 1 ==============
testdata = load('datatest.txt');
testX = testdata(:, [1, 2, 3, 4, 5]);
testX = [ones(size(testX, 1), 1) testX];
testY = testdata(:, 6);
prob = sigmoid(testX * theta);
% Compute accuracy on our training set
p = predict(theta, testX);
fprintf('Train Accuracy on test data set 1: %f\n', mean(double(p == testY)) * 100);

%% ============== Test data set 1 ==============
testdata = load('datatest2.txt');
testX = testdata(:, [1, 2, 3, 4, 5]);
testX = [ones(size(testX, 1), 1) testX];
testY = testdata(:, 6);
prob = sigmoid(testX * theta);
%fprintf(['For a test set, we predict an occupancy probability of %f\n\n'], prob);
% Compute accuracy on our training set
p = predict(theta, testX);
fprintf('Train Accuracy on test data set 2: %f\n', mean(double(p == testY)) * 100);

