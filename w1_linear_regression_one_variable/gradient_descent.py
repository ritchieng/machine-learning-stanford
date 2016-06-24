import math
theta_0 = 1
theta_1 = 2

# Given the following algorithm
# theta_j += (theta_0 * theta_1)^0.5

# New theta_0
temp_0 = theta_0 + math.sqrt(theta_0 * theta_1)
print temp_0

# New theta_1
temp_1 = theta_1 + math.sqrt(theta_0 * theta_1)
print temp_1
