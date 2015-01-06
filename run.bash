#!/bin/bash
if [ ! -f "/etc/profile.d/rvm.sh" ]; then
  echo "RVM not installed."
  exit
fi

if [ ! -f "/build/build" ]; then
  echo "Build script not found."
  exit
fi

/build/build
