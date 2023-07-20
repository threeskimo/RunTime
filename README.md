# RunTime.sh
A bash script that will track how long a program (game) has been running and keep a running total over multiple sessions. This information is tracked in a text file created in the same dir as the script.

## Why?
Because I needed a way to track how long I was playing a specific game on my Steam Deck. I know Heroic Launcher and Lutris on Linux also track playtime for games, but this was just a fun little project I wanted to try to do to see if I could write a simple little script that tracked how long I had been playing a specific game. Great for recording my time on HowLongToBeat.com.

## Usage
You will need to alter the `path` var in the script to the binary (game) you plan to track runtime for.

```bash
###################################################################
# Define path of binary to track runtime
path="/path/to/your/game/binary"
###################################################################
```

Then just run the `sh` script and the script will load the game for you.

```
./RunTime.sh
```

When you close the game, the script will write the session time to a txt file as well as record the total time played over all sessions. The script will also show this info in the terminal window before closing. 
