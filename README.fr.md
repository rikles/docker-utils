Docker-utils
============

_Docker-utils_ est un ensemble d'outils pour _Docker_

[https://www.docker.com]




Installation
------------
Afin d'utiliser les scripts, vous devez y ajouter les droits d'exécution :

    chmod u+x scripts/*


Afin d'avoir les scripts toujours disponibles, vous pouvez :

  * créer des liens symboliques dans votre répertoire `~/bin`
  * ou ajouter le répertoire des scripts à la variable d'environnment `PATH`





Utilisation
-----------

### docker-build-image
Script d'aide à la construction d'image Docker.
Il extrait le nom et la version de l'image à partir des labels spécifiques dans le `Dockerfile` :

        LABEL \
            image_name="myRepo/myUser/myImage" \
            version="1.0"


Pour plus de détail, veuillez vous utiliser l'option `--help` :

    docker-build-image --help




Contribuer
----------
  * Faites un fork du dépôt git
  * Clonez votre fork : `git clone <url>`
  * Créez une branche pour votre nouvelle fonctionnalité : `git checkout -b my-new-feature`
  * N'utilisez de tabulations, s'il vous plait !
  * Modifiez les fichiers nécessaires et ajoutez-les à l'index : `git add <FILES>`
  * Faites un commit de vos changements : `git commit -am 'Add some feature'`
  * Faites un push de votre branche : `git push origin my-new-feature`
  * Ouvrez une pull request



Licence
-------
Les outils sont sous licence _GNU General Public License version 3_ <http://www.gnu.org/licenses/>.

Voir le fichier `./COPYING`
