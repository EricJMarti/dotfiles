#!/usr/bin/env python


import os
import subprocess


dotfile_dir = os.path.dirname(os.path.realpath(__file__))

excluded_dotfiles = ['.gitignore']

dotfiles = [f for f in os.listdir(dotfile_dir)
            if os.path.isfile(os.path.join(dotfile_dir, f))
            and f not in excluded_dotfiles
            and f.startswith('.')]

for f in dotfiles:
    dotfile_origin = os.path.join(dotfile_dir, f)
    dotfile_dest = os.path.expanduser('~/{}'.format(f))
    if not os.path.islink(dotfile_dest) and os.path.isfile(dotfile_dest):
        print('Not overwriting {}'.format(dotfile_dest))
    else:
        link_cmd = ['ln', '-sf', dotfile_origin, dotfile_dest]
        if subprocess.call(link_cmd) == 0:
            print('{} -> {}'.format(dotfile_dest, dotfile_origin))
