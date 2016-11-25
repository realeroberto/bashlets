#!/bin/bash -
#
# SCRIPT: bashlet_get_methods.sh
# AUTHOR: Luciano D. Cecere
# DATE: 11/19/2016-01:03:13 PM
########################################################################
#
# bashlet_get_methods - get bashlet method names from lib file name
# Copyright (C) 2016 Luciano D. Cecere <ldante86@aol.com>
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
########################################################################

PROGRAM="${0##*/}"

local_bashlets=~/.bashlets

_get_function_name()
{
	local file="$2"
	local dir="${1%/*}"
	local prefix="bashlets_${dir}_${file}_"
 	egrep -o '[A-Za-z0-9_]+[(]+[)]' "$file" | sed "s/$prefix//" | tr -d '()'
}

_main()
{
	cd "$local_bashlets"
	for i in */
	do
		if [ -d "$i" ]; then
			dir="$i"
			break
		fi
	done

	lib="${local_bashlets}/${dir}/lib"

	cd "${dir}/lib"

	for d in */
	do
		if [ -d "$d" ]; then
			cd "$d"
			for f in *
			do
				lib_dir[$f]+="$(_get_function_name $d $f)"
			done
			cd - >/dev/null
		fi
	done
}

if [ $1 ]; then
	declare -A lib_dir
	_main
	if [ -z "${lib_dir[$1]}" ]; then
		echo "Method not found -- $1" 2>/dev/null
		exit 1
	else
		echo "${lib_dir[$1]}"
		exit 0
	fi
else
	echo "Usage: $PROGRAM library-file" 2>/dev/null
	exit 0
fi