#!/bin/bash

set -e

home=/home/neuron
branch=main
ui_version=?
ui_path=https://github.com/emqx/neuron-dashboard/releases/download/
ui_dir=$home/$branch/Program/neu-dashboard

while getopts ":b:l:i:" OPT; do
    case ${OPT} in
        b)
            branch=$OPTARG
            ;;
        i)
            ui_version=$OPTARG
            ;;
    esac
done

rm -rf $ui_dir

mkdir -p $ui_dir

cd $ui_dir

wget $ui_path/$ui_version/neuron-dashboard.zip;
wget $ui_path/$ui_version/neuron-dashboard-en.zip;
