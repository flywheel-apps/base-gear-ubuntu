#!/usr/bin/env bash
(
	#
	# create result.txt with some file information.
	#

	# Set cwd
	unset CDPATH
	cd "$( dirname "${BASH_SOURCE[0]}" )"

	dest="/flywheel/v0/output/result.txt"

	# Create a sample output file with some information.
	echo "Welcome to the Flywheel Ubuntu Gear Base!" > $dest
	echo >> $dest
    echo "Your configuration (currently None):" >> $dest
	#cat /flywheel/v0/config.json >> $dest
	#echo >> $dest
	#echo >> $dest
	echo "Your input files:" >> $dest
	find /flywheel/v0/input -type f >> $dest
	echo >> $dest
	echo "The end!" >> $dest

	# .metadata.json to indicate gear completed successfully.
	echo '{ "acquisition" : { "files" : [{ "name" : "result.txt" }] } }' > "/flywheel/v0/output/.metadata.json"
)
