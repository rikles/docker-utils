Docker-utils
============

_Docker-utils_ a package of tools for _Docker_

[https://www.docker.com]




Installation
------------
To use the scripts, you have to add execution right to them :


    chmod u+x scripts/*.sh


If you want these scripts always available, you can :

  * create symbolic links in your `~/bin` directory
  * or add the scripts directory to the `PATH` environnement variable





Usage
-----

### docker-build-image
Script that help user in the build/tag docker image process.
It extracts image name/version from special labels in the `Dockerfile` :

        LABEL \
            image_name="myRepo/myUser/myImage" \
            version="1.0"


For more information, use the `--help` option :

    docker-build-image.sh --help




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
This script is under the _GNU General Public License version 3_ <http://www.gnu.org/licenses/>.

See this file : `./COPYING`
