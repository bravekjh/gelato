import numpy as np
from ..random import get_rng


def generate_linear_regression(intercept, slope, sd=.2, size=700):
    x = np.random.uniform(-10, 10, size)
    y = intercept + x * slope
    return x, y + get_rng().normal(size=size, scale=sd)


def generate_sinus_regression(intercept, slope, sd=.2, size=700):
    x = np.random.uniform(-10, 10, size)
    y = intercept + (x + np.sin(x)) * slope
    return x, y + get_rng().normal(size=size, scale=sd)
