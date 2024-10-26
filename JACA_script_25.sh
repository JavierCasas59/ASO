#!/bin/bash

last | egrep -o '^[^ ]+|[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' | paste -d' ' - -
 
