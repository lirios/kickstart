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

# RPMFusion repos
repo --name=rpmfusion-free --baseurl=http://download1.rpmfusion.org/free/fedora/releases/$releasever/Everything/$basearch/os
repo --name=rpmfusion-free-updates --baseurl=http://download1.rpmfusion.org/free/fedora/updates/$releasever/$basearch

%packages

mpv

%end
