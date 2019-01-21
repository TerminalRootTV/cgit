#!/usr/bin/env bash

if [[ -d "$HOME/.local/bin" ]]; then
	mv cgit $HOME/.local/bin/
else
	mkdir -p $HOME/.local/bin
	mv cgit $HOME/.local/bin/
fi

if [[ ! "$(grep '\.local\/bin' $HOME/.bashrc)"  ]]; then
	echo 'export PATH="${PATH}:${HOME}/.local/bin/"' >> $HOME/.bashrc
fi

printf "%s\n" "Success install!"
