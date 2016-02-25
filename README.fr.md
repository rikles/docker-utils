Docker-utils
============

_Docker-utils_ est un ensemble d'outils pour _Docker_

[Site web de _Docker_][Docker]




Installation
------------

### Scripts
Afin d'utiliser les scripts, vous devez y ajouter les droits d'exécution :

    chmod u+x scripts/*


Afin d'avoir les scripts toujours disponibles, vous pouvez :

  * créer des liens symboliques dans votre répertoire `~/bin`
  * ou ajouter le répertoire des scripts à la variable d'environnment `PATH`


### Bash completion
Il y a des fichiers de completion pour _bash_ dans le répertoire `etc/bash_completion.d`.

Pour activer ces fichiers de completion, soit :

  * copiez les ou faites un lien symbolique sur ces fichiers dans le répertoire `/etc/bash_completion.d`
  * ou faites un `source` de ceux-ci dans votre fichier `~/.bashrc` après les lignes de chargement de la completion `bash` :

    ```bash
    source <repertoireDeFichiersDeCompletion>/*-completion
    ```




Utilisation
-----------

### docker-build-image
Script d'aide à la construction d'image Docker.
Il extrait le nom et la version de l'image à partir des labels spécifiques dans le `Dockerfile` :

```Dockerfile
LABEL \
    image_name="myRepo/myUser/myImage" \
    version="1.0"
```


Pour plus de détail, veuillez vous utiliser l'option `--help` :

    docker-build-image --help


#### Exemple
Voir le répertoire `examples`, il contient un fichier `Dockerfile` d'exemple.
Vous pouvez l'utiliser pour tester ce script et ses options.

Par exemple, pour construire l'image de test :

    docker-build-image examples/docker-build-image





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
Les outils sont sous licence [_GNU General Public License version 3_][GnuGPL].

Voir le fichier [`./COPYING`](./COPYING)






[Docker]: https://www.docker.com
[GnuGPL]: http://www.gnu.org/licenses/gpl.html
