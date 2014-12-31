#!/bin/bash

cur_path=$(cd `dirname $0`; pwd)

cp $cur_path/emacs ~/.emacs
rm -fr ~/.emacs.d
cp -r $cur_path/emacs.d ~/.emacs.d