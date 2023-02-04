# Learning lisp
Repository for learning lisp - the language I've decided to learn this year. The decision to learn lisp is a combination of:
  1. Attempting to follow the advice given by the pragmatic programmers of learning a new language every year.
  2. Chosing to learn a different programming language paradigm, which was a piece of advice I heard about through the [ADSP](https://adspthepodcast.com/) podcast. Originally it was mentioned in reference to a blog post and more recently a tweet by [Ben Deane](https://twitter.com/ben_deane/status/1154162482258305029?s=20).

## How to use this repository

This repository just contains a simple docker file which builds an environment with all the required setup to write lisp files.

The way to use this repository is to cd into the project directory then build the docker image and start a new container with the files you wish to work on mounted into the container - the example below shows mounting the src directory but can be changed as desired.

```console
$ docker build -t lisp .
$ docker run -it -v "$PWD"/src:/lisp lisp
```

Once you are in running in the container shell the tools that have been setup I found in a blog by [Susam Pal](https://susam.net/blog/lisp-in-vim.html#get-started), all the installations have been taken care of in the docker file. So whilst you are inside the container all that needs to happen is to start up a tmux shell then load the lisp file you wish to work on with gvim.

```console
$ tmux
$ gvim foo.lisp
```

After that the swank server is started with the command `, c` and you can evaluate the file you're working on is `, e`


