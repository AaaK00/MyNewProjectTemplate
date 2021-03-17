#!/bin/bash

function install_current {
  echo "trying to update $1"
  brew upgrade $1 || brew install $1 || true
  brew link $1
}

if [ "$1" != "" ]; then
    echo "Project name: $1"
else
    echo "Project name required!"
    exit 1
fi

# Download template project from github
git clone "https://github.com/AaaK00/MyNewProjectTemplate.git" $1

# When testing locally, use this.
# cp -R MyNewProjectTemplate $1/

cd $1
rm -Rf .git 

if [ -e "Mintfile" ]; then
  install_current mint
  mint bootstrap
fi

sed -i '' "s/#PROJECT_NAME#/$1/g" project.yml
rm launch.sh
mint run xcodegen

