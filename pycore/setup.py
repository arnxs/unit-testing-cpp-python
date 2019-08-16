from distutils.core import setup
from setuptools import setup, find_packages

import io
import re
from glob import glob
from os.path import basename
from os.path import dirname
from os.path import join
from os.path import splitext

setup(
    name='nanalysis',
    version='0.1.0',
    packages=find_packages(),
    package_dir={'': 'nanalysis'},
)