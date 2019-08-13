from distutils.core import setup
from setuptools import setup, find_packages

setup(
    name='pycore',
    version='0.1.0',
    packages=find_packages(),
    package_dir={'pycore': 'src/pycore'},
)