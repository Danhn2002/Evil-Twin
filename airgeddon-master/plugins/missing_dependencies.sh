#!/usr/bin/env bash

#Global shellcheck disabled warnings
#shellcheck disable=SC2034

plugin_name="Missing dependencies auto-installation"
plugin_description="A plugin to autoinstall missing dependencies on some Operating Systems (Kali, Parrot, BlackArch)"
plugin_author="v1s1t0r"

plugin_enabled=1

plugin_minimum_ag_affected_version="10.0"
plugin_maximum_ag_affected_version=""
plugin_distros_supported=("Kali" "Parrot" "BlackArch")

#Custom function. Create the correspondence between commands and packages for each supported distro
#shellcheck disable=SC2154,SC2295
function commands_to_packages() {

	local missing_commands_string_clean
	missing_commands_string_clean="${1#${1%%[![:space:]]*}}"

	declare -A commands_to_packages_correspondence

	case "${distro}" in
		"Kali"|"Parrot")
			commands_to_packages_correspondence["hcxpcapngtool"]="hcxtools"
			commands_to_packages_correspondence["hcxdumptool"]="hcxdumptool"
			commands_to_packages_correspondence["iw"]="iw"
			commands_to_packages_correspondence["awk"]="gawk"
			commands_to_packages_correspondence["airmon-ng"]="aircrack-ng"
			commands_to_packages_correspondence["airodump-ng"]="aircrack-ng"
			commands_to_packages_correspondence["aircrack-ng"]="aircrack-ng"
			commands_to_packages_correspondence["xterm"]="xterm"
			commands_to_packages_correspondence["tmux"]="tmux"
			commands_to_packages_correspondence["ip"]="iproute2"
			commands_to_packages_correspondence["lspci"]="pciutils"
			commands_to_packages_correspondence["ps"]="procps"
			commands_to_packages_correspondence["wpaclean"]="aircrack-ng"
			commands_to_packages_correspondence["crunch"]="crunch"
			commands_to_packages_correspondence["aireplay-ng"]="aircrack-ng"
			commands_to_packages_correspondence["mdk3"]="mdk3"
			commands_to_packages_correspondence["mdk4"]="mdk4"
			commands_to_packages_correspondence["hashcat"]="hashcat"
			commands_to_packages_correspondence["hostapd"]="hostapd"
			commands_to_packages_correspondence["dhcpd"]="isc-dhcp-server"
			commands_to_packages_correspondence["nft"]="nftables"
			commands_to_packages_correspondence["iptables"]="iptables"
			commands_to_packages_correspondence["ettercap"]="ettercap-text-only"
			commands_to_packages_correspondence["etterlog"]="ettercap-text-only"
			commands_to_packages_correspondence["lighttpd"]="lighttpd"
			commands_to_packages_correspondence["dnsmasq"]="dnsmasq"
			commands_to_packages_correspondence["wash"]="reaver"
			commands_to_packages_correspondence["reaver"]="reaver"
			commands_to_packages_correspondence["bully"]="bully"
			commands_to_packages_correspondence["pixiewps"]="pixiewps"
			commands_to_packages_correspondence["bettercap"]="bettercap"
			commands_to_packages_correspondence["beef-xss"]="beef-xss"
			commands_to_packages_correspondence["packetforge-ng"]="aircrack-ng"
			commands_to_packages_correspondence["hostapd-wpe"]="hostapd-wpe"
			commands_to_packages_correspondence["asleap"]="asleap"
			commands_to_packages_correspondence["john"]="john"
			commands_to_packages_correspondence["openssl"]="openssl"
			commands_to_packages_correspondence["tshark"]="tshark"
			commands_to_packages_correspondence["xdpyinfo"]="x11-utils"
			commands_to_packages_correspondence["ethtool"]="ethtool"
			commands_to_packages_correspondence["lsusb"]="usbutils"
			commands_to_packages_correspondence["rfkill"]="rfkill"
			commands_to_packages_correspondence["wget"]="wget"
			commands_to_packages_correspondence["ccze"]="ccze"
			commands_to_packages_correspondence["loginctl"]="systemd"
			commands_to_packages_correspondence["xset"]="x11-xserver-utils"
		;;
		"BlackArch")
			commands_to_packages_correspondence["hcxpcapngtool"]="hcxtools"
			commands_to_packages_correspondence["hcxdumptool"]="hcxdumptool"
			commands_to_packages_correspondence["iw"]="iw"
			commands_to_packages_correspondence["awk"]="gawk"
			commands_to_packages_correspondence["airmon-ng"]="aircrack-ng"
			commands_to_packages_correspondence["airodump-ng"]="aircrack-ng"
			commands_to_packages_correspondence["aircrack-ng"]="aircrack-ng"
			commands_to_packages_correspondence["xterm"]="xterm"
			commands_to_packages_correspondence["tmux"]="tmux"
			commands_to_packages_correspondence["ip"]="iproute2"
			commands_to_packages_correspondence["lspci"]="pciutils"
			commands_to_packages_correspondence["ps"]="procps-ng"
			commands_to_packages_correspondence["wpaclean"]="aircrack-ng"
			commands_to_packages_correspondence["crunch"]="crunch"
			commands_to_packages_correspondence["aireplay-ng"]="aircrack-ng"
			commands_to_packages_correspondence["mdk3"]="mdk3"
			commands_to_packages_correspondence["mdk4"]="mdk4"
			commands_to_packages_correspondence["hashcat"]="hashcat"
			commands_to_packages_correspondence["hostapd"]="hostapd"
			commands_to_packages_correspondence["dhcpd"]="dhcp"
			commands_to_packages_correspondence["nft"]="nftables"
			commands_to_packages_correspondence["iptables"]="iptables"
			commands_to_packages_correspondence["ettercap"]="ettercap"
			commands_to_packages_correspondence["etterlog"]="ettercap"
			commands_to_packages_correspondence["lighttpd"]="lighttpd"
			commands_to_packages_correspondence["dnsmasq"]="dnsmasq"
			commands_to_packages_correspondence["wash"]="reaver"
			commands_to_packages_correspondence["reaver"]="reaver"
			commands_to_packages_correspondence["bully"]="bully"
			commands_to_packages_correspondence["pixiewps"]="pixiewps"
			commands_to_packages_correspondence["bettercap"]="bettercap"
			commands_to_packages_correspondence["beef"]="beef"
			commands_to_packages_correspondence["packetforge-ng"]="aircrack-ng"
			commands_to_packages_correspondence["hostapd-wpe"]="hostapd-wpe"
			commands_to_packages_correspondence["asleap"]="asleap"
			commands_to_packages_correspondence["john"]="john"
			commands_to_packages_correspondence["openssl"]="openssl"
			commands_to_packages_correspondence["tshark"]="wireshark-cli"
			commands_to_packages_correspondence["xdpyinfo"]="xorg-xdpyinfo"
			commands_to_packages_correspondence["ethtool"]="ethtool"
			commands_to_packages_correspondence["lsusb"]="usbutils"
			commands_to_packages_correspondence["rfkill"]="rfkill"
			commands_to_packages_correspondence["wget"]="wget"
			commands_to_packages_correspondence["ccze"]="ccze"
			commands_to_packages_correspondence["loginctl"]="systemd"
			commands_to_packages_correspondence["xset"]="xorg-xset"
		;;
	esac

	local missing_packages_string=""
	IFS=' ' read -r -a missing_commands_array <<< "${missing_commands_string_clean}"
	for item in "${missing_commands_array[@]}"; do
		missing_packages_string+=" ${commands_to_packages_correspondence[${item}]}"
	done

	missing_packages_string_clean="${missing_packages_string#${missing_packages_string%%[![:space:]]*}}"
}

#Custom function. Create text messages to be used in missing dependencies plugin
#shellcheck disable=SC2154
function missing_dependencies_text() {

	arr["ENGLISH","missing_dependencies_1"]="\${blue_color}Even with the \${normal_color}AIRGEDDON_SILENT_CHECKS\${blue_color} option enabled, airgeddon has detected that you are missing some dependencies due to the auto install missing dependencies plugin. \${green_color}Do you want to proceed with the automatic installation? \${normal_color}\${visual_choice}"

	arr["ENGLISH","missing_dependencies_2"]="\${blue_color}Due to the auto install missing dependencies plugin, airgeddon could try to install the necessary missing packages. \${green_color}Do you want to proceed with the automatic installation? \${normal_color}\${visual_choice}"

	arr["ENGLISH","missing_dependencies_3"]="Missing dependencies packages are trying to be installed. Please be patient..."

	arr["ENGLISH","missing_dependencies_4"]="Dependencies were successfully installed. Script can continue..."

	arr["ENGLISH","missing_dependencies_5"]="An error occurred while trying to install dependencies. This may be due to multiple causes. Make sure your internet connection is working. Anyway, you have installed all essential tools so you can continue. You'll miss only some features"

	arr["ENGLISH","missing_dependencies_6"]="An error occurred while trying to install dependencies. This may be due to multiple causes. Make sure your internet connection is working. Script can't continue due the lack of some essential tools"

	arr["ENGLISH","missing_dependencies_7"]="Do you want to see the output of the error occurred while updating? \${blue_color}Maybe this way you might find the root cause of the problem \${normal_color}\${visual_choice}"
}

#Posthook for check_compatibity function to install missing dependencies
#shellcheck disable=SC2154,SC2086
function missing_dependencies_posthook_check_compatibility() {

	if [[ ${essential_toolsok} -ne 1 ]] || [[ ${optional_toolsok} -ne 1 ]] || [[ ${update_toolsok} -ne 1 ]]; then

		if "${AIRGEDDON_SILENT_CHECKS:-true}"; then
			ask_yesno "missing_dependencies_1" "yes"
		else
			ask_yesno "missing_dependencies_2" "yes"
		fi

		if [ "${yesno}" = "y" ]; then

			local missing_tools=()

			for item in "${!possible_package_names[@]}"; do
				if ! hash "${item}" 2> /dev/null || [[ "${item}" = "beef" ]]; then
					if [ "${item}" = "beef" ]; then
						case "${distro}" in
							"Kali"|"Parrot")
								if ! hash "beef-xss" 2> /dev/null; then
									missing_tools+=("beef-xss")
								fi
							;;
							"BlackArch")
								if ! hash "${item}" 2> /dev/null; then
									missing_tools+=("${item}")
								fi
							;;
						esac
					else
						missing_tools+=("${item}")
					fi
				fi
			done

			for item in "${internal_tools[@]}"; do
				if ! hash "${item}" 2> /dev/null; then
					missing_tools+=("${item}")
				fi
			done

			local missing_commands_string=""
			for item in "${missing_tools[@]}"; do
				missing_commands_string+=" ${item}"
			done

			commands_to_packages "${missing_commands_string}"

			echo
			language_strings "${language}" "missing_dependencies_3" "blue"
			echo

			local resultok=1
			local update_output=""
			case "${distro}" in
				"Kali"|"Parrot")
					if [ -n "${missing_packages_string_clean}" ]; then
						if ! update_output=$(apt update 2>&1); then
							resultok=0
						else
							if ! update_output+=$(apt -y install ${missing_packages_string_clean} 2>&1); then
								resultok=0
							fi
						fi
					fi
				;;
				"BlackArch")
					if [ -n "${missing_packages_string_clean}" ]; then
						if ! update_output=$(pacman -Sy 2>&1); then
							resultok=0
						else
							if ! update_output+=$(pacman --noconfirm -S ${missing_packages_string_clean} 2>&1); then
								resultok=0
							fi
						fi
					fi
				;;
			esac

			if [ ${resultok} -eq 1 ]; then
				compatible=1
				update_toolsok=1
				for item in "${optional_tools_names[@]}"; do
					optional_tools[${item}]=1
				done
				language_strings "${language}" "missing_dependencies_4" "yellow"
			else
				if [ ${compatible} -eq 1 ]; then
					language_strings "${language}" "missing_dependencies_5" "yellow"
				else
					language_strings "${language}" "missing_dependencies_6" "red"
				fi

				ask_yesno "missing_dependencies_7" "yes"
				if [ "${yesno}" = "y" ]; then
					echo "${update_output}"
					echo
					if [ ${compatible} -eq 0 ]; then
						language_strings "${language}" 115 "read"
					fi
				fi
			fi
		else
			if [ "${compatible}" -ne 1 ]; then
				exit_code=1
				exit_script_option
			fi
		fi
	fi
}

#Override read_yesno function to be able to print the question correctly
#shellcheck disable=SC2154
function missing_dependencies_override_read_yesno() {

	debug_print

	echo
	missing_dependencies_text

	language_strings "${language}" "${1}" "green"
	read -rp "> " yesno
}
