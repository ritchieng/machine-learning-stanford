function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K - number of centroids
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%


% find idx
% given X, centroids

% returns size of row, since second argument = 1
m = size(X,1)

% iterate through 1 to m - all the examples in x
for i = 1:m
    % create distance array of 1 x K matrix
    distance_array = zeros(1,K);

    % iterate through 1 to K - all the centroids
    for j = 1:K
        % store into matrix in row 1 for every j
        distance_array(1,j) = sqrt(sum(power((X(i,:)-centroids(j,:)),2)));
    end

    % call min function
    % return d - minimum number
    % return d_idx - position of number in array
    [d, d_idx] = min(distance_array);

    % store position in idx matrix
    idx(i,1) = d_idx;
end


% =============================================================

end

