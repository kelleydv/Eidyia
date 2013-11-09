Eidyia
======

A scientific Python 3 environment configured with Vagrant.
This environment is designed to be used by professionals and students, with ease of access a priority.

Included Libraries
------------------
<a href="https://github.com/numpy/numpy" target="_blank">Numpy</a>

<a href="https://github.com/matplotlib/matplotlib" target="_blank">Matplotlib</a>

<a href="https://github.com/scipy/scipy" target="_blank">Scipy</a>

<a href="https://github.com/ipython/ipython" target="_blank">iPython</a>

Getting Started
---------------

With <a href="http://downloads.vagrantup.com/tags/v1.3.5" target="_blank">Vagrant</a> and
<a href="https://www.virtualbox.org/wiki/Downloads" target="_blank">VirtualBox</a> installed:

```shell
$ cd Eidyia
$ vagrant up
```
After the vm boots and finishes installations, visiting http://0.0.0.0:8888 in your host's browser will bring you to a dashboard of
<a href="http://ipython.org/notebook.html" target="_blank">IPython notebooks</a>.
The default notebooks are an excellent series by
<a href="https://github.com/jrjohansson/scientific-python-lectures" target="_blank">jrjohansson</a>
on scientific computing with python.

Using Linux
-----------

Eidiya runs on <a href="http://www.ubuntu.com/server" target="_blank">ubuntu server</a> 13.04.
To access Linux and all of the above Python libraries directly,

```shell
$ cd Eidyia
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
<a href="https://github.com/stemdev/Eidyia/blob/master/VagrantFile" target="_blank">VagrantFile</a>
also installs git, curl, and ubuntu's 
<a href="http://packages.ubuntu.com/lucid/build-essential" target="_blank">build-essential</a> (g++, make, etc.).
