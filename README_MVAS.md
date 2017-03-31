# YET ANOTHER APACHE MPM: MVAS WORKER

----
# What is it? Why?

----
# Dependencies

* lib mvas: -lmvas
* Kernel support to VAS

----
# Development

> You will need apxs to compile and install this module. If you want to compile,
use:

```
make
```

> If you want to install this module in Apache httpd:

```
make install
```

> If you want to clean files:

```
make clean
```

----
## How to use it

> Unfortunately, this is not yet completely separated from Apache source code.
To test it, you have to copy mvas_worker to mpm folder inside httpd. Example:

```
cp mvas_worker <pathToApacheCode>/server/mpm/
```

> Afterward, you have to generate configure file again (inside Apache code):

```
./buildconf --with-included-apr
```

> Generate configure file:

```
./configure --with-included-apr --enable-mpms-shared=all --with-mpm=mvas_worker
```

> Compile and install:

```
make && sudo make install
```

> To enable module you have to:

1. Edit /usr/local/apache2/conf/httpd.conf and add:

```
LoadModule mpm_mvas_worker_module  modules/mod_mpm_mvas_worker.so
```

Ps.: Take a look on mvas_worker.c, worker_pre_config. There you can find the
informations

