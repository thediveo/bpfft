#!/bin/bash
set -x

echo "Defaults:vscode secure_path =" \
    '"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/go/bin"' \
    | sudo tee -a /etc/sudoers.d/vscode
    