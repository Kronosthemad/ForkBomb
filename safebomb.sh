#!/bin/bash

# Usage: ./safe_bomb.sh [depth]
# Example: ./safe_bomb.sh 3

depth=${1:-0}
max_depth=6  # Hard cap to prevent accidents

if [ "$depth" -lt "$max_depth" ]; then
    echo "Level $depth: My PID is $$, spawning children..."
    sleep 2
    
    # Spawn two children in the background, incrementing the depth
    $0 $((depth + 1)) &
    $0 $((depth + 1)) &
    
    # Keep the parent alive for a moment so we can see the tree
    wait
else
    echo "Level $depth: Max depth reached (PID $$). Standing down."
    sleep 5
fi