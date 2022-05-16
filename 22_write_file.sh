#!/bin/bash

echo "Hello" >> output

cat <<EOM >> output
hello
hello
goodbye
bye bye
see you later
EOM

echo -e "Final Result: \n$(cat output)"
