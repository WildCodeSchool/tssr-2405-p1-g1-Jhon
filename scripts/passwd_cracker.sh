#!/bin/bash

sudo unshadow /etc/passwd /etc/shadow > johninput

john --format=crypt johninput

exit 0
