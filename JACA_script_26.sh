#!/bin/bash

find / -type f -perm 007 -exec ls -l {} \; > archivos_peligrosos.txt 
