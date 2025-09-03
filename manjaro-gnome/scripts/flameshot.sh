#!/bin/bash
flameshot gui -p /tmp/screenshot.png && wl-copy </tmp/screenshot.png && rm -f /tmp/screenshot.png
