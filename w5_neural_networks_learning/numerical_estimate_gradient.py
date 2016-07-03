import math

def gradient(theta, eps):
    return (math.pow((theta + eps), 3) - math.pow((theta - eps), 3)) / (2 * eps)

theta_val = 1
eps_val = 0.01

print gradient(theta_val, eps_val)


