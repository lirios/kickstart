#
# This file is part of Liri.
#
# Copyright (C) 2015-2016 Pier Luigi Fiorini
#
# Author(s):
#    Pier Luigi Fiorini <pierluigi.fiorini@gmail.com>
#
# $BEGIN_LICENSE:GPL2+$
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# $END_LICENSE$
#

%post

# Desktop configuration
cat > /etc/sysconfig/desktop <<EOF
PREFERRED=/usr/bin/liri-session
DISPLAYMANAGER=/usr/bin/sddm
EOF

# Set up login manager
rm -f /etc/sddm.conf
mkdir -p /usr/lib/sddm/sddm.conf.d
cat > /usr/lib/sddm/sddm.conf.d/00-lirios.conf <<EOF
[Theme]
Current=lirios
EOF
cat > /usr/lib/sddm/sddm.conf.d/01-livemedia.conf <<EOF
[Autologin]
Session=liri
User=liveuser
EOF

%end
