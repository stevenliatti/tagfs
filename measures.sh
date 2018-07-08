#!/bin/bash

iter=100
for entry in ~/* 
do
    name=$(echo $entry | tr / -)

    find $entry -type d | wc -l > measures/release$name.txt
    find $entry -type f | wc -l >> measures/release$name.txt
    for i in `seq 1 $iter` 
    do 
        target/release/tag_engine $entry >> measures/release$name.txt
    done

    find $entry -type d | wc -l > measures/debug$name.txt
    find $entry -type f | wc -l >> measures/debug$name.txt
    for i in `seq 1 $iter` 
    do 
        target/debug/tag_engine $entry >> measures/debug$name.txt
    done
done

for entry in measures/*
do 
    octave average.m $entry
done