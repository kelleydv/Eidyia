# Eidyia


A scientific Python 3 environment configured with Vagrant.
This environment is designed to be used by professionals and students, with ease of access a priority.

## Included Libraries

[NumPy](https://github.com/numpy/numpy)

[matplotlib](https://github.com/matplotlib/matplotlib)

[SciPy](https://github.com/scipy/scipy)

[Pandas](https://github.com/pydata/pandas)

[SymPy](https://github.com/sympy/sympy)

[IPython](https://github.com/ipython/ipython)

## Databases
Eidyia also includes MongoDB and PostgreSQL

Getting Started
---------------

With [Vagrant](http://downloads.vagrantup.com/tags/v1.3.5)  and
[VirtualBox](https://www.virtualbox.org/wiki/Downloads) installed:

```shell
$ cd Eidyia
$ vagrant up
```
After the vm boots and finishes installations, visiting http://0.0.0.0:8888 in your host's browser will bring you to a dashboard of
[IPython notebooks](http://ipython.org/notebook.html) .
The default notebooks are an excellent series by
[jrjohansson](https://github.com/jrjohansson/scientific-python-lectures)
on scientific computing with python.
<img src="http://i.imgur.com/fCnTlYu.png" alt="">

Using Linux
-----------

Eidiya runs on [ubuntu server](http://www.ubuntu.com/server) 14.04.
To access Linux and all of the above Python libraries directly,

```shell
$ cd Eidyia
$ vagrant up
$ vagrant ssh
$ python3
Python 3.3.1 (default, Apr 17 2013, 22:30:32) 
[GCC 4.7.3] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import numpy as np
>>> import matplotlib.pyplot as plt
>>> 
```
Or, alternatively
```shell
>>> from pylab import *
```
With x11 forwarding, matplotlib can also be fully utilized from the command line.  The installation script in
(Vagrantfile)[https://github.com/stemdev/Eidyia/blob/master/scripts/install.sh]
also installs git, curl, and ubuntu's 
[build-essential](http://packages.ubuntu.com/lucid/build-essential) (g++, make, etc.).

More on Notebooks
----------
To stop the notebook server
```shell
$ killall ipython3
```
To restart the notebook server
```shell
$ cd Eidyia/nb
$ ipython3 notebook --ip='0.0.0.0'
```

