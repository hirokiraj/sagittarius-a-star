# shellcheck shell=bash
# Prints the user + host.

run_segment() {
	userpart=$(whoami)
	hostpart=$(hostname -s)
	echo " ${userpart}@${hostpart}"
	exit 0
}
