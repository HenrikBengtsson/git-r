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
Git Fork Utility

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

Version: 0.0.1-9004
Copyright: Henrik Bengtsson (2017-2020)
License: GPL (>= 2.1) [https://www.gnu.org/licenses/gpl.html]
```


## Required software

* Git
* Bash
* Compilers etc. required to build R from source