#!/bin/bash

set -e

# start avahi's dependency
service dbus start

# start avahi
service avahi-daemon start

# start samaba
service smbd start

exec "$@"