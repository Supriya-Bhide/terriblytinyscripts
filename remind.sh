# -------------------------------------------------------
# Author: Supriya Bhide
# Year: 2023
# -------------------------------------------------------

#!/bin/bash

#sudo apt-get install at
# command -v at >/dev/null 2>&1 || { echo "Error: 'at' is not installed. Install with: sudo apt-get install at"; exit 1; }
echo "I will remind you to '$1' at $2"
echo "notify-send '$1'" | at "$2" 
	# $1: "Message"     $2: HH:MM

# #!/bin/bash

# # Simple reminder script using `at` and `notify-send`

# if ! command -v at >/dev/null 2>&1; then
#     echo "Error: 'at' is not installed. Install with: sudo apt-get install at"
#     exit 1
# fi

# if [ $# -ne 2 ]; then
#     echo "Usage: $0 \"Message\" HH:MM"
#     exit 1
# fi

# echo "I will remind you to '$1' at $2"
# echo "notify-send '$1'" | at "$2"
