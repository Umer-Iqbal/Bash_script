#!/bin/bash

s1="hi"
s2="hi1"

if [[ "$s1" == "$s2" ]]
    then
        echo match
    else
        echo not mach
fi