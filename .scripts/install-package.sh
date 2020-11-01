#!/bin/sh

set -e
export HOMEBREW_NO_AUTO_UPDATE=1

package=$1

if [ -z "$package" ]; then
  echo "No package specified"
  exit 2
fi

if brew ls --versions "$package" > /dev/null; then
  echo "Upgrading $package"
  brew upgrade "$package"
else
  echo "Installing $package"
  brew install "$package"
fi

exit 0
