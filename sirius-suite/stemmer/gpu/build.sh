#!/usr/bin/env bash

hash nvcc 2>/dev/null || {
  echo >&2 "$0: [ERROR] nvcc is not installed. Aborting."
  exit 1
}

nvcc -arch=sm_35 porter.cu -o porter_stem