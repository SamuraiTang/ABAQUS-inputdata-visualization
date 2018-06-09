from __future__ import division
import numpy as np
import scipy as sp
import scipy.sparse as ssp
import csv

gps = 8
elen = 7312

with open('residual.csv', 'rb') as f:
    reader = csv.reader(f)
    result = np.array([list(map(float, line)) for line in reader])
    residual = result[:, -1].reshape((gps * elen, 6), order='C')

temp = np.arange(1, elen + 1, dtype=int).reshape((elen, 1))
ele = np.repeat(temp, gps, axis=0)

temp = np.arange(1, gps+1, dtype=int).reshape((gps, 1))
gp = np.tile(temp, (elen, 1))

result = np.concatenate((ele, gp, residual), axis=1)
np.savetxt('residual_field.txt', result, fmt='%d', delimiter=' ')
