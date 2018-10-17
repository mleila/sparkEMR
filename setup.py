import os
from setuptools import find_packages
from setuptools import setup

with open('requirements.txt') as fp:
    install_requirements = fp.read()

setup(
    name='sparkdl',
    version='1.2',
    install_requires=install_requirements,
    packages=find_packages()
    )
