%predectivemaintenanace script


% Predictive Maintenance for Washing Machine Motor using Motor Speed and Desired Speed

% Step 1: Load the motor speed and desired speed data from Simulink simulation
% These variables are exported from the Simulink model using the 'To Workspace' block

% Example: assuming the variables motor_speed_data and desired_speed_data are available
% after running the Simulink model.

% Load simulated data (these variables should be in the workspace from Simulink)
  % Actual motor speed (RPM)
motor_speed_data = evalin('base', 'out.motor_speed_data');
  % Desired motor speed (RPM)
desired_speed_data = evalin('base', 'out.desired_speed_data');

% Step 2: Preprocess the data
% Normalize the data for consistency across different ranges
motor_speed_data = normalize(motor_speed_data);
desired_speed_data = normalize(desired_speed_data);

% Step 3: Calculate the speed error (difference between actual and desired speeds)
speed_error = motor_speed_data - desired_speed_data;

% Step 4: Feature Extraction
% 1. Speed Error (absolute difference)
% 2. Moving average of speed error (for trend analysis)
% 3. Standard deviation of motor speed (variability)
% 4. Mean speed error (overall bias)

window_size = 50;  % Window size for moving average

% Moving average of the speed error to detect trends
speed_error_trend = movmean(speed_error, window_size);

% Calculate the standard deviation of motor speed
std_motor_speed = std(motor_speed_data);  % Overall motor speed variability

% Calculate the mean speed error over the time series
mean_speed_error = mean(speed_error);


% Calculate the length for all vectors
len = length(speed_error) - 1;

% Adjust speed_error_trend if necessary to match length of speed_error
min_len = min(length(speed_error), length(speed_error_trend));
speed_error = speed_error(1:min_len);  % Trim to min length
speed_error_trend = speed_error_trend(1:min_len);  % Trim to min length

% Ensure std_motor_speed and mean_speed_error are column vectors
std_motor_speed_vector = (std_motor_speed * ones(1, min_len))';  % Convert to column vector
mean_speed_error_vector = (mean_speed_error * ones(1, min_len))';  % Convert to column vector

% Now concatenate all features (ensure all vectors are the same length)
features = [speed_error, speed_error_trend, std_motor_speed_vector, mean_speed_error_vector];

% Check the dimensions of features
disp(['Features matrix size: ', num2str(size(features))]);


% Step 5: Generate failure labels (In practice, labels would come from real data)
% Here we simulate failure based on large speed errors.
failure_labels = double(abs(speed_error(1:end-1)) > 0.1);  % 1 if error exceeds threshold

% Step 6: Split data into training and testing sets (80% training, 20% testing)
cv = cvpartition(length(failure_labels), 'HoldOut', 0.2);
train_data = features(training(cv), :);
train_labels = failure_labels(training(cv));
test_data = features(test(cv), :);
test_labels = failure_labels(test(cv));

% Step 7: Train a Machine Learning Model (Random Forest)
model = fitcensemble(train_data, train_labels, 'Method', 'Bag', 'NumLearningCycles', 100);

% Step 8: Predict on Test Data
predicted_labels = predict(model, test_data);

% Step 9: Evaluate Model Performance
confusion_matrix = confusionmat(test_labels, predicted_labels);
disp('Confusion Matrix:');
disp(confusion_matrix);

% Calculate Accuracy, Precision, Recall, and F1 Score
accuracy = sum(predicted_labels == test_labels) / length(test_labels);
fprintf('Accuracy: %.2f%%\n', accuracy * 100);

% Additional metrics from confusion matrix
TP = confusion_matrix(2, 2); % True Positives
TN = confusion_matrix(1, 1); % True Negatives
FP = confusion_matrix(1, 2); % False Positives
FN = confusion_matrix(2, 1); % False Negatives

precision = TP / (TP + FP);
recall = TP / (TP + FN);
f1_score = 2 * (precision * recall) / (precision + recall);

fprintf('Precision: %.2f\n', precision);
fprintf('Recall: %.2f\n', recall);
fprintf('F1 Score: %.2f\n', f1_score);

% Step 10: Predictive Maintenance Action
% If a failure is predicted, trigger a maintenance alert
if any(predicted_labels == 1)
    disp('Warning: Potential motor component failure detected! Maintenance required.');
    String = 'Warning: Potential motor component failure detected! Maintenance required.';
    assignin('base', 'messageFrompred', String);
else
    disp('Motor components are functioning normally.');
    String = 'Motor components are functioning normally.';
    assignin('base', 'messageFrompred', String);
end
