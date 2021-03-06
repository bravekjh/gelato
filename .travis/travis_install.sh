#!/usr/bin/env bash
# In Python 3.3, we test the min version of NumPy and SciPy. In Python 2.7, we test more recent version.
if test -e $HOME/miniconda2/envs/pyenv; then
    echo "pyenv already exists."
else
    echo "Creating pyenv."
    if [[ $TRAVIS_PYTHON_VERSION == '2.7' ]]; then conda create --yes -q -n pyenv python=2.7 ; fi
    if [[ $TRAVIS_PYTHON_VERSION == '3.6' ]]; then conda create --yes -q -n pyenv python=3.6 ; fi
fi
