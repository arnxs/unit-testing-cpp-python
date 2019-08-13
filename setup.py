from distutils.core import setup

setup(
    name='pycore',
    version='0.1.0',
    packages=['',],
    package_dir={'pycore': 'src/pycore',
    'tests': 'tests'},
    long_description=open('README.txt').read(),
)