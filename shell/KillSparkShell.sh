#!/bin/bash

yarn application --list  | grep "Spark shell" | awk '{print $1}' | while read line; do echo `yarn application -kill $line` ; done
