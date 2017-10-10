#!/bin/bash
echo Home directories of all users is 
grep "home" /etc/passwd|awk 'BEGIN{FS=":"}{print $6}'
