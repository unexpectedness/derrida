#!/bin/bash

rm -rf codox && mkdir codox
git clone git@github.com:unexpectedness/derrida.git codox
cd codox
git symbolic-ref HEAD refs/heads/gh-pages
rm .git/index
git clean -fdx
cd ..

lein codox
