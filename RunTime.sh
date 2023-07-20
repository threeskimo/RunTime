#!/bin/bash

###################################################################
# Define path of binary to track runtime
path="/usr/bin/kwrite"
###################################################################

# Find binary name (used for naming the results txt)
binary=$(basename $path)

# Calculate start time and then run binary. After closing, find end time.
start=`date +%s`
echo Starting...
$path
end=`date +%s`

# Determine how long binary ran for and display
seconds=$((end-start))
formatTime=$(date -d@$seconds -u +%H:%M:%S)
printf "RUNTIME:   $formatTime\n"

# Write this information to file (also determine if file already exists)
# Check if *-time.txt exists
if [[ -f "$binary-time.txt" ]]; then
	# File exists. Read the first line of file for the old time and add new time to it
	oldSeconds=$(head -n 1 $binary-time.txt)
	time=$((oldSeconds+seconds))
else
	# File doesn't exist.  Just set time to current seconds.
	time=$seconds
fi

# Convert new time to HH:MM:SS
newFormatTime=$(date -d@$time -u +%H:%M:%S)
printf "TOTAL:     $newFormatTime\n"

# Write new seconds and new formated time to the file
cat >$binary-time.txt <<EOL
${time}
${newFormatTime}
EOL

# Let user see result before closing
sleep 3
