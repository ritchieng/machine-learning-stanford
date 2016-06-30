# 2 decimal places
x2 = [7921.00, 5184.00, 8836.00, 4761.00]
mean_x2 = sum(x2) / len(x2)
range_x2 = max(x2) - min(x2)
normalized_x2_2 = (x2[1] - mean_x2) / range_x2

print len(x2)
print x2[1]
print mean_x2
print range_x2
print float(normalized_x2_2)
