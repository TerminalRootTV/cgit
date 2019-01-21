#!/usr/bin/env bash

install(){
	if [[ -d "$HOME/.local/bin" ]]; then
		mv cgit $HOME/.local/bin/
		source $HOME/.bashrc
	else
		mkdir -p $HOME/.local/bin
		mv cgit $HOME/.local/bin/
		source $HOME/.bashrc
	fi

	if [[ ! "$(grep '\.local\/bin' $HOME/.bashrc)"  ]]; then
		echo 'export PATH="${PATH}:${HOME}/.local/bin/"' >> $HOME/.bashrc
		source $HOME/.bashrc
	fi

	printf "%s\n" "Success install!"
}

remove(){
	if [[ -f "$HOME/.local/bin/cgit" ]]; then
		mv $HOME/.local/bin/cgit .
		source $HOME/.bashrc
		printf "%s\n" "Removido com sucesso!"
	else
		printf "%s\n" "Já estava removido."
	fi
}

if [[ "$1"  ]]; then
	while [[ "$1"  ]]; do
		case "$1" in
			-i|--install) install && exit 0 ;;
			-r|--remove) remove && exit 0 ;;
			-v|--version) echo "Version 0.1" && exit 0 ;;
			-h|--help) echo "Use: -i for install and -r for remove." && exit 0 ;;
			*) echo "Invalid option." && exit 1 ;;
		esac
	done
else
	install
fi
