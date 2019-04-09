#!/usr/bin/env sh

set -e

#
# Install basic stuff like zsh, brew, etc.
#
platform=$(uname)
if [ "${platform}" = "Darwin" ]; then
	# install brew (and zsh through it)
	if test ! $(command -v brew); then
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi

	brew bundle --file=brew/Brewfile

	ZSH_BINARY=$(command -v zsh)
	# change the current user's shell to zsh, if it isn't already
	if [ "$SHELL" != "$ZSH_BINARY" ]; then
		# need to make which the path return by command -v zsh is in /etc/shells
		if ! grep "$ZSH_BINARY" /etc/shells; then
			echo "Need to add $ZSH_BINARY to /etc/shells"
			echo $ZSH_BINARY | sudo tee -a /etc/shells
		fi
		chsh -s $(command -v zsh)
	fi

	osx/defaults.sh
fi
unset platform


#
# Set up rcfiles symlinks
#
rcfiles="
	zsh/zshrc
  zsh/shell_aliases
  zsh/shell_exports
"

for rcf in ${rcfiles}; do
	src=$(pwd)/${rcf}
	dest=~/.$(basename ${rcf})
	rm -f ${dest} && ln -s ${src} ${dest}
	unset src dest
done
unset rcf rcfiles