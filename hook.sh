#!/usr/bin/env bash

# based on https://github.com/lukas2511/dehydrated/wiki/example-dns-01-nsupdate-script

set -e
set -u
set -o pipefail

case "$1" in
	"deploy_challenge")
		echo "Add the following to the zone definition of ${2}:"
		echo "  _acme-challenge.${2}. IN TXT \"${4}\""
		echo ""
		echo -n "When ready, press enter to continue..."
		read tmp
	;;
	"clean_challenge")
		echo "Now you can remove the following from the zone definition of ${2}:"
		echo "  _acme-challenge.${2}. IN TXT \"${4}\""
		echo ""
		echo -n "When ready, press enter to continue..."
		read tmp
	;;
	"deploy_cert")
		# do nothing for now
	;;
	"unchanged_cert")
		# do nothing for now
	;;
	*)
		echo "Unknown hook \"${1}\""
		exit 1
	;;
esac

exit 0
