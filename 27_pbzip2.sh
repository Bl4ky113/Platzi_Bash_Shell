#!/bin/bash

tar -cvf shell_scripts.tar *.sh
pbzip2 -f shell_scripts.tar
