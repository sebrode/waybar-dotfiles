#!/bin/bash

HYPRIDLE_CMD="/usr/bin/hypridle"

if pgrep -x "$(basename "$HYPRIDLE_CMD")" > /dev/null; then
    # Running -> show the enabled icon
    echo '  '
else
    # Not running -> show the disabled icon
    echo '  '
fi
