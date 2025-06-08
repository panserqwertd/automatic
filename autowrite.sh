#!/bin/bash

package=$1

sudo emerge --autounmask --autounmask-write $package
sudo dispatch-conf
sudo emerge --autounmask $package
