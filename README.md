Docker-utils
============

[_Version française_](./README.fr.md)

_Docker-utils_ a package of tools for _Docker_

[_Docker_ web site][Docker]




Installation
------------

### Scripts
To use the scripts, you have to add execution right to them :

    chmod u+x scripts/*


If you want these scripts always available, you can :

  * create symbolic links in your `~/bin` directory
  * or add the scripts directory to the `PATH` environnement variable


### Bash completion
There are _bash_ completion files in `etc/bash_completion.d` folder.

To enable these completions either :

  * copy or link the completion files in `/etc/bash_completion.d` directory
  * or source them in your `~/.bashrc` file after bash completion features are loaded :

    ```bash
    source <completionFilesDir>/*-completion
    ```




Usage
-----

### docker-build-image
Script that help user in the build/tag docker image process.
It extracts image name/version from special labels in the `Dockerfile` :

```Dockerfile
LABEL \
    image_name="myRepo/myUser/myImage" \
    version="1.0"
```


For more information, use the `--help` option :

    docker-build-image --help


#### Example
See `examples` folder, it contains a sample image `Dockerfile`.
You can use it to test this script and its options.

For example, to build the sample image :

    docker-build-image examples/docker-build-image





Contributing
------------
  * Fork it !
  * Clone your fork : `git clone <url>`
  * Create your feature branch : `git checkout -b my-new-feature`
  * No tabs please !
  * Modify files and add them to the staging area : `git add <FILES>`
  * Commit your changes : `git commit -am 'Add some feature'`
  * Push to the branch : `git push origin my-new-feature`
  * Submit a pull request



License
-------
This script is under the [_GNU General Public License version 3_][GnuGPL].

See this file : [`./COPYING`](./COPYING)






[Docker]: https://www.docker.com
[GnuGPL]: http://www.gnu.org/licenses/gpl.html
