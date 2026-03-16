#!/bin/bash
set -e

if grep -qE '\s/sys/kernel/debug\s.*\s-\sdebugfs\s' /proc/self/mountinfo; then
    echo "debugfs already present"
    exit 0
fi

sudo mount -t debugfs -o ro,nosuid,nodev,noexec none /sys/kernel/debug

echo "debugfs successfully mounted"
