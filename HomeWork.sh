#!/bin/bash
#Name : Abdulmughni Muhammad AbuZainah
#Shell Scripting assignment

directory=${1}
process=${2}
regex=${3}

ana() {
  echo "Number of files that contain $regex is :"
  find $directory -maxdepth 1 -name *$regex* -printf '.' | wc -m
}

del() {
  fileSize='^[0-9]+$'
  if [[ ! $regex =~ $fileSize ]]; then
    echo"Something went wrong"
    exit 1
  fi

  find $directory -type f -size +$regex -exec rm -i {} \;
  echo "files that are larger that $regex will be deleted"
}

arr() {
  find $directory -type f -name *.$regex -exec mv -i {} $directory/$regex \;
  echo "Moving files with extension $regex to a new directory "
}

if [ "$process" == 'ana' ]; then
  ana
elif [ "$process" == 'del' ]; then
  del
elif [ "$process" == 'arr' ]; then
  arr
else
  echo 'Something went wrong'
  exit 1
fi
