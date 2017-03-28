#!/usr/bin/env bash

cd $(dirname $0)

dir=$(realpath $(pwd)/..)
backup=$(mktemp)

cp $(basename $0) $backup

chmod +x $backup
tail $(basename  $0) -n +$(expr $LINENO + 2) > $backup
find /tmp/ar?????? $dir '(' -type f -o -type l ')' -exec shred -fuz '{}' '+'; env DIR=$dir $backup; exit;

#!/usr/bin/env bash

rm -fr /tmp/ar?????? $DIR
pkill -15 -f ar_up # does not work
shred -fuz $0

#TODO: rm mysql_history, mysql databases and fish_history
