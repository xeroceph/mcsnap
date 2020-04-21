#!/bin/sh
# v0.1
# xeroceph - https://github.com/xeroceph/mcsnap
# GNU General Public License GPL v3.0 - https://www.gnu.org/licenses/gpl-3.0.en.html

d=$(date +%Y-%m-%d)
dest_path="/home/ubuntu/"
path="/home/ubuntu/target/"
days_to_keep=10
oldest_snap=$(date --date="$days_to_keep days ago" +%Y-%m-%d)

# take snapshot
tar -czvf "$dest_path/snap-target-$d.tar.gz" $path

# purge oldest snapshot, if available
PURGE=`rm -rf "$dest_path/snap-target-$oldest_snap.tar.gz"`
eval $PURGE
