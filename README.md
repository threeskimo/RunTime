# RunTime.sh
A bash script that will track how long a program (game) has been running and keep a running total over multiple sessions. This information is tracked in a text file created in the same dir as the script.

## Why?
Because I needed a way to track how long I was playing a specific game on my Steam Deck. That's really it.

## Usage
You will need to alter the `path` var in the script to the binary (game) you plan to track runtime for.

```bash
###################################################################
# Define path of binary to track runtime
path="/usr/bin/kwrite"
###################################################################
```

Then to run, just run the `sh` script.

```
./RunTime.sh
```

When you close the game, the script will show the session length as well as the total 
