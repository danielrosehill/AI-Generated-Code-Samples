# What This Does

- Downloads your Github repositories (all of them)
- Puts them into a defined output path
-  Makes that into a `tar.gz` archive

# What The Files Are

`backup.sh` is the script

# Instructions

- Get your personal Github token
- Store it securely in a password vault
-  Add it into your script
-  Create the target folder and define it in the script
-  Elevate permissions on the Bash script to make it executable
-  Run it
  
  # Result

  You'll get a timestampped (dd-mm-yy) folder with yout repositories. 

  You can modify the timestamp format in the script if you like.