#!/bin/bash

touch new_file

echo "Hello Im a new File" >> new_file

cp new_file copy_file
mv new_file ./challenges/

cat ./challenges/new_file
cat copy_file

rm ./challenges/new_file
rm copy_file
