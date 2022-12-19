# A Git Extension Making it Easier to Build R from Source

## Installation

The `git-r` script is distributed under GPL (>= 2.1) and the source code is
available at https://github.com/HenrikBengtsson/git-r/.  To "install" it,
just do:

```sh
$ curl -O https://raw.githubusercontent.com/HenrikBengtsson/git-r/master/bin/git-r
$ chmod ugo+x git-r
```

If you add it to the `PATH`, then the `git` command will automatically find it and you can call it as:

```sh
$ git r ...
```



## Full command-line help
```
Git R: Build R From GitHub Source

Usage:
 git-r [options]* <command>

Commands:
 configure              Configure
 svn-revision           Update and display SVN-VERSION
 pull-recommended       Download (rsync) recommended packages
 build                  Update SVN-REVISION and runs 'make'
 build-recommended      Build recommended packages
 install
 svn-diff               Generate a SVN-compatible patch
 svn-patch              Apply svn-diff patch to SVN repos
 prefix                 Output installation path

Options:
 --prefix-root <path>   Installation directory.
                        (default: '$HOME/software/R-devel')
 --verbose/--no-verbose Control output of extra information
 --version              Display version

Example:
 git clone https://github.com/wch/r-source.git
 cd r-source
 git checkout tags/R-4-0-3
 git r svn-revision

 git checkout R-4-0-branch
 git-r pull-recommended
 git-r configure --enable-R-shlib --enable-memory-profiling
 git-r build
 git-r build-recommended
 git-r install

 git checkout trunk
 git-r configure --enable-R-shlib --enable-memory-profiling --without-recommended-packages
 git-r build
 git-r install --protect

 git-r svn-diff
 git-r svn-patch
 svn diff

Required System Libraries:
* Ubuntu 18.04:
  sudo apt install xorg-dev libpcre2-dev libcurl4-openssl-dev
  sudo apt install libreadline-dev libbz2-dev liblzma-dev
  sudo apt install libjpeg-dev libtiff-dev libcairo2-dev
  sudo apt install openjdk-11-jdk

References:
* https://bookdown.org/lionel/contributing/building-r.html

Version: 0.0.1-9006
Copyright: Henrik Bengtsson (2017-2020)
License: GPL (>= 2.1) [https://www.gnu.org/licenses/gpl.html]
```


## Required software

* Git
* Bash
* Everything else required to build R from source, e.g. configure, make, and compilers


### Ubuntu 22.04

_(Last updated: 2022-12-19)_

If you're on a fresh Ubuntu 22.04 system, here's what needs to be able to get started with `git-r`:

```sh
sudo apt install -y git curl
```

Then, to be able to configure and build R with its default, you need at a minimum:

```r
sudo apt install -y make
sudo apt install -y gcc gfortran g++
sudo apt install -y zlib1g-dev libbz-dev liblzma-dev
sudo apt install -y libcurl4-gnutls-dev

sudo apt install -y libreadline-dev  ## --with-readline=yes (default)
sudo apt install -y libxt-dev        ## --with-x=yes (default)
sudo apt install -y libpcre2-dev     ## unless --with-pcre1
```

For R to be able to produce PNG image files and also support internationalization (i18n), you need to install:

```sh
sudo apt install -y libpng-dev
sudo apt install -y libicu-dev
```


