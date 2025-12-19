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
 build                  Update SVN-REVISION and runs 'make'
 install
 pull-recommended       Download recommended packages using rsync
 build-recommended      Build recommended packages
 scan=<search>          Search *.R and *.c files
 svn-diff               Generate a SVN-compatible patch
 svn-patch              Apply svn-diff patch to SVN repos
 prefix                 Output installation details include prefix path
 svn-revision           Update and display SVN-VERSION (rarely needed)
 help                   Display this help

Options:
 --prefix-root <path>   Installation directory.
                        (default: '$HOME/software/R-devel')
 --verbose/--no-verbose Control output of extra information
 --version              Display version

Example:
 # Clone the "official" git mirror of the R source code
 git clone https://github.com/r-devel/r-svn.git
 cd r-svn

 # Build and install R-devel (without recommended packages)
 git checkout main
 git-r configure --enable-R-shlib --enable-memory-profiling --without-recommended-packages
 git-r build
 git-r install --protect

 # Build and install latest R 4.5 (with recommended packages)
 git checkout R-4-5-branch
 git-r pull-recommended
 git-r configure --enable-R-shlib --enable-memory-profiling
 git-r build
 git-r build-recommended
 git-r install

 # Generate an SVN diff (useful for R BugZilla)
 git-r svn-diff
 git-r svn-patch
 svn diff

 # Search all *.R and *.c files
 git scan --what="R_*"
 git scan --what="_R_*"
 git scan --what="R_CHECK_*"
 git scan --what="_R_CHECK_*"

Required System Libraries:
* Ubuntu 18.04:
  sudo apt install xorg-dev libpcre2-dev libcurl4-openssl-dev
  sudo apt install libreadline-dev libbz2-dev liblzma-dev
  sudo apt install libjpeg-dev libtiff-dev libcairo2-dev
  sudo apt install openjdk-11-jdk

References:
* The "official" git mirror of R SVN (https://github.com/r-devel/r-svn)
* https://bookdown.org/lionel/contributing/building-r.html

Version: 0.0.1-9011
Copyright: Henrik Bengtsson (2017-2025)
License: GPL (>= 2.1) [https://www.gnu.org/licenses/gpl.html]
```


## Required software

* Git
* Bash
* Everything else required to build R from source, e.g. configure, make, and compilers