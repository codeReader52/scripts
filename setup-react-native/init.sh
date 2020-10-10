#!/bin/bash

# arg1: name of prject (compulsory)
# arg2: name of folder to put the project in (optional). Default to current folder.

# bash script to initialize a basic react native project
# pardon my noob bash skill... too lazy to build actual function 😅 LOL!!!

# PREREQUISITE: NEED YARN INSTALLED GLOBALLY

app_name=$1
project_location=$2
current_location=$(pwd)

if [ -z $app_name ]; then 
  echo "Fatal error: "
  echo "No project name is specified."
  exit 1234
fi

if [ -z $project_location ]; then 
  echo "No root location of the project is defined. Creating root project in current folder".
  project_location=$current_location
fi

if [ ! -d $project_location ]; then
  echo "Fatal error: "
  echo "Folder $project_location does not exist."
  exit 1234
fi



cd $project_location

rm -rf $app_name

yarn global add expo-cli
expo init $app_name

cd $app_name

yarn add --dev typescript @types/react @types/react-native react-native-typescript-transformer
yarn add --dev eslint prettier @react-native-community/eslint-config eslint-plugin-react eslint-plugin-react-hooks
yarn add --dev @typescript-eslint/eslint-plugin @typescript-eslint/parser


cp $current_location/.eslintrc.js .
cp $current_location/.prettierrc.js .
cp $current_location/metro.config.js .

yarn eslint --fix
