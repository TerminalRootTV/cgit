#!/usr/bin/env bash

if [[ -d "$USER/.local/bin" ]]; then
	mv cgit $USER/.local/bin/
else
	mkdir -p $USER/.local/bin
	mv cgit $USER/.local/bin/
fi

if [[ ! "$(grep '.local/bin/' $USER/.bashrc)"  ]]; then
	echo 'export PATH="${PATH}:${HOME}/.local/bin/"' >> $HOME/.bashrc
fi

printf "%s/n" "Success install!"
