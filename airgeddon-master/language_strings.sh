#!/usr/bin/env bash
#Title........: language_strings.sh
#Description..: All the translated strings that airgeddon uses are located here.
#Author.......: v1s1t0r
#Bash Version.: 4.2 or later

#Set language_strings file version
#shellcheck disable=SC2034
function set_language_strings_version() {

	debug_print

	language_strings_version="11.11-1"
}

#Set different language text strings
#shellcheck disable=SC2154,SC2034
function initialize_language_strings() {

	debug_print

	if [[ "$(declare -p wps_data_array 2> /dev/null)" != "declare -A"* ]]; then
		declare -gA wps_data_array
	fi

	if [[ "$(declare -p interfaces_band_info 2> /dev/null)" != "declare -A"* ]]; then
		declare -gA interfaces_band_info
	fi

	if [[ "$(declare -p function_hooks 2> /dev/null)" != "declare -A"* ]]; then
		declare -gA function_hooks
	fi

	declare -A unknown_chipset
	unknown_chipset["ENGLISH"]="Unknown"
	unknown_chipsetvar="${unknown_chipset[${language}]}"

	declare -A hintprefix
	hintprefix["ENGLISH"]="Hint"
	hintvar="*${hintprefix[${language}]}*"
	escaped_hintvar="\*${hintprefix[${language}]}\*"

	declare -A optionaltool_needed
	optionaltool_needed["ENGLISH"]="Locked option, it needs: "

	declare -A under_construction
	under_construction["ENGLISH"]="under construction"
	under_constructionvar="${under_construction[${language}]}"

	declare -gA possible_package_names_text
	possible_package_names_text["ENGLISH"]="Possible package name"

	declare -gA disabled_text
	disabled_text["ENGLISH"]="Disabled"

	declare -gA reboot_required
	reboot_required["ENGLISH"]="${red_color_slim} (reboot required)${normal_color}"

	declare -gA docker_image
	docker_image["ENGLISH"]="${docker_based_distro} Docker image based"

	declare -gA et_misc_texts
	et_misc_texts["ENGLISH",0]="Evil Twin AP Info"
	et_misc_texts["VIETNAM",0]="Thông tin Evil Twin AP"

	et_misc_texts["ENGLISH",1]="Channel"
	et_misc_texts["VIETNAM",1]="Kênh"

	et_misc_texts["ENGLISH",2]="Online time"
	et_misc_texts["VIETNAM",2]="Thời gian Online"

	et_misc_texts["ENGLISH",3]="DHCP ips given to possible connected clients"
	et_misc_texts["VIETNAM",3]=""

	et_misc_texts["ENGLISH",4]="On this attack you have to use an external sniffer to try to obtain client passwords connected to the network"
	et_misc_texts["VIETNAM",4]=""

	et_misc_texts["ENGLISH",5]="On this attack, watch the sniffer's screen to see if a password appears"
	et_misc_texts["VIETNAM",5]=""

	et_misc_texts["ENGLISH",6]="On this attack, we'll wait for a network client to provide us the password for the wifi network in our captive portal"

	et_misc_texts["ENGLISH",7]="No clients connected yet"

	et_misc_texts["ENGLISH",8]="airgeddon. Evil Twin attack captured passwords"

	et_misc_texts["ENGLISH",9]="Nhập mật khẩu để kết nối"

	et_misc_texts["ENGLISH",10]=""

	et_misc_texts["ENGLISH",11]="Mật khẩu"

	et_misc_texts["ENGLISH",12]="Hiển thị mật khẩu"

	et_misc_texts["ENGLISH",13]="Kết nối"

	et_misc_texts["ENGLISH",14]="An unexpected error occurred, redirecting to the main screen"

	et_misc_texts["ENGLISH",15]="Internet Portal"

	et_misc_texts["ENGLISH",16]="The password must be at least 8 characters"

	et_misc_texts["ENGLISH",17]="The password is incorrect, redirecting to the main screen"

	et_misc_texts["ENGLISH",18]="The password is correct, the connection will be restablished in a few moments"

	et_misc_texts["ENGLISH",19]="airgeddon. Captive portal Evil Twin attack captured password"

	et_misc_texts["ENGLISH",20]="Attempts"

	et_misc_texts["ENGLISH",21]="last password:"

	et_misc_texts["ENGLISH",22]="Captured passwords on failed attempts"

	et_misc_texts["ENGLISH",23]="Password captured successfully"

	et_misc_texts["ENGLISH",24]="The password was saved on file"

	et_misc_texts["ENGLISH",25]="Press [Enter] on the main script window to continue, this window will be closed"

	et_misc_texts["ENGLISH",26]="Error. The password must be at least 8 characters. Redirecting to the main screen"

	et_misc_texts["ENGLISH",27]="This attack has two parts. Watch the sniffer's screen to see if a password appears. You can also open BeEF control panel at ${white_color}${beef_control_panel_url}${pink_color} , log in (user: ${white_color}beef${pink_color} / pass: ${white_color}${beef_pass}${pink_color}) and try to control the clients browser"

	declare -gA wps_texts
	wps_texts["ENGLISH",0]="The password was saved on file"

	wps_texts["ENGLISH",1]="airgeddon. Decrypted password during WPS attack"

	wps_texts["ENGLISH",2]="Channel"

	declare -gA wep_texts
	wep_texts["ENGLISH",0]="Press [Enter] on the main script window to continue, this window will be closed"

	wep_texts["ENGLISH",1]="airgeddon. Decrypted password during WEP attack"

	wep_texts["ENGLISH",2]="Channel"

	wep_texts["ENGLISH",3]="Hexadecimal"

	wep_texts["ENGLISH",4]="WEP key decrypted successfully:"

	wep_texts["ENGLISH",5]="WEP AP Info"

	wep_texts["ENGLISH",6]="The password was saved on file"

	declare -gA asleap_texts
	asleap_texts["ENGLISH",0]="Response"

	asleap_texts["ENGLISH",1]="airgeddon. Decrypted password using asleap"

	asleap_texts["ENGLISH",2]="Challenge"

	declare -gA jtr_texts
	jtr_texts["ENGLISH",0]="Enterprise users and passwords"

	jtr_texts["ENGLISH",1]="airgeddon. Decrypted password using john the ripper"

	jtr_texts["ENGLISH",2]="Enterprise user"

	declare -gA hashcat_texts
	hashcat_texts["ENGLISH",0]="PMKID password"
	
	hashcat_texts["ENGLISH",1]="airgeddon. Decrypted password using hashcat"

	hashcat_texts["ENGLISH",2]="Enterprise user"
	

	hashcat_texts["ENGLISH",3]="Enterprise users and passwords"


	declare -gA aircrack_texts
	aircrack_texts["ENGLISH",0]="airgeddon. Decrypted password using aircrack"


	declare -gA enterprise_texts
	enterprise_texts["ENGLISH",0]="Enterprise Evil Twin AP Info"


	enterprise_texts["ENGLISH",1]="Channel"

	enterprise_texts["ENGLISH",2]="Online time"

	enterprise_texts["ENGLISH",3]="On this attack, we'll wait for a network client to provide us a hash or a password for the Enterprise wifi network in our fake AP. You selected \"smooth\" mode, so as soon as one password or hash is captured, the attack will be dismantled. You can also stop it pressing [Enter] key on the main window"

	enterprise_texts["ENGLISH",4]="On this attack, we'll wait for a network client to provide us a hash or a password for the Enterprise wifi network in our fake AP. You selected \"noisy\" mode, so the attack won't stop until you press [Enter] key on the main window"

	enterprise_texts["ENGLISH",5]="Last captured user"

	enterprise_texts["ENGLISH",6]="Nothing captured yet"

	enterprise_texts["ENGLISH",7]="Captured hashes"

	enterprise_texts["ENGLISH",8]="Captured plain text passwords"

	enterprise_texts["ENGLISH",9]="Press [Enter] on the main script window to continue, this window will be closed and the files will be generated"
	
	enterprise_texts["ENGLISH",10]="The captured files will be saved on directory"

	enterprise_texts["ENGLISH",11]="airgeddon. Captured passwords during Enterprise Evil Twin"

	declare -gA footer_texts
	footer_texts["ENGLISH",0]="If you enjoyed the script and found it useful, you can support the project by making a donation. Through PayPal (${mail}) or sending a fraction of cryptocurrency (Bitcoin, Ethereum, Litecoin...). Any amount, no matter how small (1, 2, 5 $/€) is welcome. More information and direct links to do it at: ${urlgithub_wiki}/Contributing"
	
	declare -gA arr
	arr["ENGLISH",0]="This interface \${current_iface_on_messages} is already in managed mode"

	arr["ENGLISH",1]="This interface \${current_iface_on_messages} is not a wifi card. It doesn't support managed mode"
	
	arr["ENGLISH",2]="English O.S. language detected. Supported by script. Automatically changed"
	
	arr["ENGLISH",3]="Select target network:"

	arr["ENGLISH",4]="Press [Enter] key to start attack..."

	arr["ENGLISH",5]="It looks like your internet connection is unstable. The script can't connect to repository. It will continue without updating..."

	arr["ENGLISH",6]="Welcome to airgeddon script \${normal_color}v\${airgeddon_version}"

	arr["ENGLISH",7]="This script is only for educational purposes. Be good boyz&girlz!"

	arr["ENGLISH",8]="Known compatible distros with this script:"

	arr["ENGLISH",9]="Detecting system..."

	arr["ENGLISH",10]="This interface \${current_iface_on_messages} is already in monitor mode"

	arr["ENGLISH",11]="Exiting airgeddon script \${normal_color}v\${airgeddon_version}\${blue_color} - See you soon! :)"

	arr["ENGLISH",12]="\${blue_color}Interruption detected. \${green_color}Do you really want to exit? \${normal_color}\${visual_choice}"

	arr["ENGLISH",13]="This interface \${current_iface_on_messages} is not a wifi card. It doesn't support monitor mode"

	arr["ENGLISH",14]="This interface \${current_iface_on_messages} is not in monitor mode"

	arr["ENGLISH",15]="The interface changed its name while setting in managed mode. Autoselected"
	
	arr["ENGLISH",16]="Managed mode now is set on \${current_iface_on_messages}"
	
	arr["ENGLISH",17]="Setting your interface in managed mode..."
	
	arr["ENGLISH",18]="Setting your interface in monitor mode..."
	
	arr["ENGLISH",19]="Please be patient. Maybe killing some conflicting processes..."
	
	arr["ENGLISH",20]="This interface \${current_iface_on_messages} doesn't support monitor mode"
	
	arr["ENGLISH",21]="The interface changed its name while setting in monitor mode. Autoselected"
	
	arr["ENGLISH",22]="Monitor mode now is set on \${current_iface_on_messages}"
	
	arr["ENGLISH",23]="There is a problem with the selected interface. Redirecting you to script exit"
	
	arr["ENGLISH",24]="Select an interface to work with:"
	
	arr["ENGLISH",25]="Set channel (1-14):"
	
	arr["ENGLISH",26]="Channel set to \${normal_color}\${channel}"
	
	arr["ENGLISH",27]="Type target BSSID (example: 00:11:22:33:44:55):"
	
	arr["ENGLISH",28]="BSSID set to \${normal_color}\${bssid}"
	
	arr["ENGLISH",29]="Type target ESSID:"
	
	arr["ENGLISH",30]="You have selected a hidden network ESSID. Can't be used. Select another one or perform a BSSID based attack instead of this"
	
	arr["ENGLISH",31]="ESSID set to \${normal_color}\${essid}"
	
	arr["ENGLISH",32]="All parameters set"
	
	arr["ENGLISH",33]="Starting attack. When started, press [Ctrl+C] to stop..."
	
	arr["ENGLISH",34]="Selected interface \${current_iface_on_messages} is in monitor mode. Attack can be performed"
	
	arr["ENGLISH",35]="Deauthentication / Dissasociation \${mdk_command} attack chosen (monitor mode needed)"
	
	arr["ENGLISH",36]="Deauthentication aireplay attack chosen (monitor mode needed)"
	
	arr["ENGLISH",37]="WIDS / WIPS / WDS Confusion attack chosen (monitor mode needed)"
	
	arr["ENGLISH",38]="Beacon flood attack chosen (monitor mode needed)"
	
	arr["ENGLISH",39]="Auth DoS attack chosen (monitor mode needed)"
	
	arr["ENGLISH",40]="Michael Shutdown (TKIP) attack chosen (monitor mode needed)"
	
	arr["ENGLISH",41]="No interface selected. You'll be redirected to select one"
	
	arr["ENGLISH",42]="Interface \${pink_color}\${current_iface_on_messages}\${blue_color} selected. Mode: \${pink_color}\${ifacemode}\${normal_color}"
	
	arr["ENGLISH",43]="Selected BSSID: \${pink_color}\${bssid}\${normal_color}"
	
	arr["ENGLISH",44]="Selected channel: \${pink_color}\${channel}\${normal_color}"
	
	arr["ENGLISH",45]="Selected ESSID: \${pink_color}\${essid}\${blue_color} <- can't be used"
	
	arr["ENGLISH",46]="Selected ESSID: \${pink_color}\${essid}\${normal_color}"
	
	arr["ENGLISH",47]="Select an option from menu:"
	
	arr["ENGLISH",48]="1.  Select another network interface"
	
	arr["ENGLISH",49]="4.  Explore for targets (monitor mode needed)"
	
	arr["ENGLISH",50]="monitor mode needed for attacks"
	
	arr["ENGLISH",51]="5.  Deauth / disassoc amok \${mdk_command} attack"
	
	arr["ENGLISH",52]="6.  Deauth aireplay attack"
	
	arr["ENGLISH",53]="7.  WIDS / WIPS / WDS Confusion attack"
	
	arr["ENGLISH",54]="old \"obsolete/non very effective\" attacks"
	
	arr["ENGLISH",55]="2.  Put interface in monitor mode"
	
	arr["ENGLISH",56]="3.  Put interface in managed mode"
	
	arr["ENGLISH",57]="10. Enterprise attacks menu"
	
	arr["ENGLISH",58]="9.  Polish"
	
	arr["ENGLISH",59]="0.  Return to main menu"
	
	arr["ENGLISH",60]="11. About & Credits / Sponsorship mentions"
	
	arr["ENGLISH",61]="0.  Exit script"
	
	arr["ENGLISH",62]="8.  Beacon flood attack"
	
	arr["ENGLISH",63]="9.  Auth DoS attack"
	
	arr["ENGLISH",64]="10. Michael shutdown exploitation (TKIP) attack"
	
	arr["ENGLISH",65]="Exploring for targets option chosen (monitor mode needed)"
	
	arr["ENGLISH",66]="Selected interface \${current_iface_on_messages} is in monitor mode. Exploration can be performed"
	
	arr["ENGLISH",67]="WEP filter enabled in scan. When started, press [Ctrl+C] to stop..."
	
	arr["ENGLISH",68]="No networks found"
	
	arr["ENGLISH",69]="  N.         BSSID      CHANNEL  PWR   ENC    ESSID"
	
	arr["ENGLISH",70]="Only one target detected. Autoselected"
	
	arr["ENGLISH",71]="(*) Network with clients"
	
	arr["ENGLISH",72]="Invalid target network was chosen"
	
	arr["ENGLISH",73]="airgeddon script \${normal_color}v\${airgeddon_version}\${blue_color} developed by:"
	
	arr["ENGLISH",74]="This script is under GPLv3 (or later) License"
	
	arr["ENGLISH",75]="Thanks to the \"Spanish pentesting crew\", to the \"Wifislax Staff\", to the forums people who help me, my collaborators, translators and specially to kcdtv, xpz3 and xtonousou for beta testing and support received"
	
	arr["ENGLISH",76]="Invalid menu option was chosen"
	
	arr["ENGLISH",77]="Invalid interface was chosen"
	
	arr["ENGLISH",78]="1.  Change language"
	
	arr["ENGLISH",79]="1.  English"
	
	arr["ENGLISH",80]="2.  Spanish"

	arr["ENGLISH",81]="Select a language:"

	arr["ENGLISH",82]="Invalid language was chosen"

	arr["ENGLISH",83]="Language changed to English"

	arr["ENGLISH",84]="Enterprise attacks menu"

	arr["ENGLISH",85]="Contact us by mail, IRC, Discord, etc. More info here: \${normal_color}\${urlgithub_wiki}/Contact"

	arr["ENGLISH",86]="Welcome"

	arr["ENGLISH",87]="Change language"

	arr["ENGLISH",88]="Interface selection"

	arr["ENGLISH",89]="\${mdk_command} amok action"

	arr["ENGLISH",90]="Aireplay deauth action"

	arr["ENGLISH",91]="WIDS / WIPS / WDS confusion action"

	arr["ENGLISH",92]="Beacon flood action"

	arr["ENGLISH",93]="Auth DoS action"

	arr["ENGLISH",94]="Michael Shutdown action"

	arr["ENGLISH",95]="\${mdk_command} amok parameters"

	arr["ENGLISH",96]="Aireplay deauth parameters"

	arr["ENGLISH",97]="WIDS / WIPS / WDS parameters"

	arr["ENGLISH",98]="Beacon flood parameters"

	arr["ENGLISH",99]="Auth DoS parameters"

	arr["ENGLISH",100]="Michael Shutdown parameters"

	arr["ENGLISH",101]="airgeddon ${normal_color}v${airgeddon_version}${green_color_title} main menu"

	arr["ENGLISH",102]="DoS attacks menu"

	arr["ENGLISH",103]="Exploring for targets"

	arr["ENGLISH",104]="Select target"

	arr["ENGLISH",105]="About & Credits"

	arr["ENGLISH",107]="Join the project at \${normal_color}\${urlgithub}"

	arr["ENGLISH",108]="Let's check if you have installed what script needs"

	arr["ENGLISH",109]="Essential tools: checking..."

	arr["ENGLISH",110]="Your distro has all necessary essential tools. Script can continue..."

	arr["ENGLISH",111]="You need to install some essential tools before running this script"

	arr["ENGLISH",112]="WPA/WPA2 Enterprise networks are commonly used in corporate environments. They use a Radius server for authentication and unlike conventional networks require more elements for authentication, not just a password. They may require username, password and occasionally a certificate"

	arr["ENGLISH",113]="3.  French"

	arr["ENGLISH",114]="Use it only on your own networks!!"

	arr["ENGLISH",115]="Press [Enter] key to continue..."

	arr["ENGLISH",116]="4.  Catalan"

	arr["ENGLISH",117]="smooth mode, disconnect on capture"

	arr["ENGLISH",118]="4.  DoS attacks menu"

	arr["ENGLISH",119]="5.  Handshake/PMKID tools menu"

	arr["ENGLISH",120]="Handshake/PMKID tools menu"

	arr["ENGLISH",121]="6.  Capture Handshake"

	arr["ENGLISH",122]="7.  Clean/optimize Handshake file"

	arr["ENGLISH",123]="If the password for the wifi network is obtained with the WPS attack, you should decide where to save it. \${green_color}Type the path to store the file or press [Enter] to accept the default proposal \${normal_color}[\${wps_potpath}]"

	arr["ENGLISH",124]="monitor mode needed for capturing"

	arr["ENGLISH",125]="There is no valid target network selected. You'll be redirected to select one"

	arr["ENGLISH",126]="You have a valid WPA, WPA2 or WPA2/WPA3 in \"Mixed mode\" target network selected. Script can continue..."

	arr["ENGLISH",127]="The natural order to proceed in this menu is usually: 1-Select wifi card 2-Put it in monitor mode 3-Select target network 4-Capture Handshake/PMKID"

	arr["ENGLISH",128]="Select a wifi card to work in order to be able to do more actions than with an ethernet interface"

	arr["ENGLISH",129]="The natural order to proceed in this menu is usually: 1-Select wifi card 2-Put it in monitor mode 3-Select target network 4-Start attack"

	arr["ENGLISH",130]="Remember to select a target network with clients to capture Handshake"

	arr["ENGLISH",131]="Not all attacks affect all access points. If an attack is not working against an access point, choose another one :)"

	arr["ENGLISH",132]="Cleaning a Handshake file is recommended only for big size files. It's better to have a backup, sometimes file can be corrupted while cleaning it"

	arr["ENGLISH",133]="If you select a target network with hidden ESSID, you can't use it, but you can perform BSSID based attacks to that network"

	arr["ENGLISH",134]="If your Linux is a virtual machine, it is possible that integrated wifi cards are detected as ethernet. Use an external usb wifi card"

	arr["ENGLISH",135]="Type of encryption: \${pink_color}\${enc}\${normal_color}"

	arr["ENGLISH",136]="Only some networks are vulnerable to PMKID capturing. For this they must have activated roaming features like 802.11r"

	arr["ENGLISH",137]="The selected network is invalid. To get a Handshake, encryption type of target network should be WPA, WPA2 or WPA2/WPA3 in \"Mixed mode\""

	arr["ENGLISH",138]="Attack for Handshake"

	arr["ENGLISH",139]="1.  Deauth / disassoc amok \${mdk_command} attack"

	arr["ENGLISH",140]="2.  Deauth aireplay attack"

	arr["ENGLISH",141]="3.  WIDS / WIPS / WDS Confusion attack"

	arr["ENGLISH",143]="Two windows will be opened. One with the Handshake capturer and other with the attack to force clients to reconnect"

	arr["ENGLISH",144]="Don't close any window manually, script will do when needed. In about \${timeout} seconds maximum you'll know if you've got the Handshake"

	arr["ENGLISH",145]="\${blue_color}Your wifi card supports the 5Ghz band but your \"wash\" version included in reaver package (v\${reaver_version}) is not able to scan both bands at once. To use dual-band scan feature you must have at least version v\${minimum_wash_dualscan_version} so you have to make a choice. \${green_color}Do you want to scan the 5Ghz band? \${pink_color}(If you answer no (\"n\"), 2.4Ghz band will be scanned) \${normal_color}\${visual_choice}"

	arr["ENGLISH",146]="It seems we failed... try it again, choose another attack or increase the timeout"

	arr["ENGLISH",147]="0.  Return to Handshake tools menu"

	arr["ENGLISH",148]="Type the path to store the file or press [Enter] to accept the default proposal \${normal_color}[\${handshakepath}]"

	arr["ENGLISH",149]="Handshake file generated successfully at [\${normal_color}\${enteredpath}\${blue_color}]"

	arr["ENGLISH",150]="No captured Handshake file detected during this session..."

	arr["ENGLISH",151]="Handshake captured file detected during this session [\${normal_color}\${enteredpath}\${blue_color}]"

	arr["ENGLISH",153]="File cleaned/optimized successfully"

	arr["ENGLISH",154]="Set path to file:"

	arr["ENGLISH",155]="The directory exists but you didn't specify filename. It will be autogenerated [\${normal_color}\${suggested_filename}\${yellow_color}]"

	arr["ENGLISH",156]="Directory does not exist"

	arr["ENGLISH",157]="The path exists but you don't have write permissions"

	arr["ENGLISH",158]="The path is valid and you have write permissions. Script can continue..."

	arr["ENGLISH",159]="The file doesn't need to be cleaned/optimized"

	arr["ENGLISH",161]="File doesn't exist"

	arr["ENGLISH",162]="Congratulations!!"

	arr["ENGLISH",163]="When airgeddon requests you to enter a path to a file either to use a dictionary, a Handshake or anything else, did you know that you can drag and drop the file over the airgeddon window? In this way you don't have to type the path manually"

	arr["ENGLISH",164]="Cleaning temp files"

	arr["ENGLISH",165]="Checking if cleaning/restoring tasks are needed..."

	arr["ENGLISH",166]="Do you want to preserve monitor mode for your card on exit? \${normal_color}\${visual_choice}"

	arr["ENGLISH",167]="Setting your interface in managed mode"

	arr["ENGLISH",168]="Launching previously killed processes"

	arr["ENGLISH",169]="6.  Offline WPA/WPA2 decrypt menu"

	arr["ENGLISH",170]="Offline WPA/WPA2 decrypt menu"

	arr["ENGLISH",171]="The key decrypt process is performed offline on a previously captured file"

	arr["ENGLISH",172]="1.  (aircrack) Dictionary attack against Handshake/PMKID capture file"

	arr["ENGLISH",173]="Selected capture file: \${pink_color}\${enteredpath}\${normal_color}"

	arr["ENGLISH",174]="It seems you have an unsupported bettercap version to perform sslstrip. Use the old bettercap 1.x or use bettercap>=\${bettercap2_sslstrip_working_version}. Early versions of bettercap 2.x have known problems to perform sslstrip attacks. More info at Wiki: \${normal_color}\${urlgithub_wiki}/Bettercap Tips"

	arr["ENGLISH",176]="aircrack CPU, non GPU attacks"

	arr["ENGLISH",177]="Selected captured file: \${pink_color}None\${normal_color}"

	arr["ENGLISH",178]="To decrypt the key of a WPA/WPA2 network, the capture file must contain a Handshake/PMKID"

	arr["ENGLISH",179]="Decrypting by bruteforce, it could pass hours, days, weeks or even months to take it depending on the complexity of the password and your processing speed"

	arr["ENGLISH",180]="Enter the path of a dictionary file:"

	arr["ENGLISH",181]="The path to the dictionary file is valid. Script can continue..."

	arr["ENGLISH",182]="Selected dictionary file: \${pink_color}\${DICTIONARY}\${normal_color}"

	arr["ENGLISH",183]="You already have selected a dictionary file during this session [\${normal_color}\${DICTIONARY}\${blue_color}]"

	arr["ENGLISH",184]="Do you want to use this already selected dictionary file? \${normal_color}\${visual_choice}"

	arr["ENGLISH",185]="Selected BSSID: \${pink_color}None\${normal_color}"

	arr["ENGLISH",186]="You already have selected a capture file during this session [\${normal_color}\${enteredpath}\${blue_color}]"

	arr["ENGLISH",187]="Do you want to use this already selected capture file? \${normal_color}\${visual_choice}"

	arr["ENGLISH",188]="Enter the path of a captured file:"

	arr["ENGLISH",189]="The path to the capture file is valid. Script can continue..."

	arr["ENGLISH",190]="Starting decrypt. When started, press [Ctrl+C] to stop..."

	arr["ENGLISH",191]="\${blue_color}airgeddon can't find the directory path where you have BeEF installed. \${green_color}Do you want to enter it manually? \${normal_color}\${visual_choice}"

	arr["ENGLISH",192]="You already have selected a BSSID during this session and is present in capture file [\${normal_color}\${bssid}\${blue_color}]"

	arr["ENGLISH",193]="Do you want to use this already selected BSSID? \${normal_color}\${visual_choice}"

	arr["ENGLISH",194]="Enter the minimum length of the key to decrypt (\${minlength_text}-63):"

	arr["ENGLISH",195]="Enter the maximum length of the key to decrypt (\${minlength}-63):"

	arr["ENGLISH",196]="Select the character set to use:"

	arr["ENGLISH",197]="1.  Lowercase chars"

	arr["ENGLISH",198]="2.  Uppercase chars"

	arr["ENGLISH",199]="3.  Numeric chars"

	arr["ENGLISH",200]="4.  Symbol chars"

	arr["ENGLISH",201]="5.  Lowercase + uppercase chars"

	arr["ENGLISH",202]="6.  Lowercase + numeric chars"

	arr["ENGLISH",203]="7.  Uppercase + numeric chars"

	arr["ENGLISH",204]="8.  Symbol + numeric chars"

	arr["ENGLISH",205]="9.  Lowercase + uppercase + numeric chars"

	arr["ENGLISH",206]="10. Lowercase + uppercase + symbol chars"

	arr["ENGLISH",207]="11. Lowercase + uppercase + numeric + symbol chars"

	arr["ENGLISH",208]="If you choose a big charset and a long key length, the process could take so much time"

	arr["ENGLISH",209]="The charset to use is: [\${normal_color}\${showcharset}\${blue_color}]"
	
	arr["ENGLISH",210]="The script will check for internet access looking for a newer version. Please be patient..."
	
	arr["ENGLISH",211]="It seems you have no internet access. The script can't connect to repository. It will continue without updating..."
	
	arr["ENGLISH",212]="The script is already in the latest version. It doesn't need to be updated"
	
	arr["ENGLISH",213]="A new version of the script exists (v\${airgeddon_last_version}). It will be downloaded"
	
	arr["ENGLISH",214]="The new version was successfully downloaded. The script will be launched again"
	
	arr["ENGLISH",215]="Chosen action can be carried out only over WPA/WPA2 networks, however WPA3 has been included in the scan filter because these networks sometimes work in \"Mixed mode\" offering WPA2/WPA3 and in that case they are displayed in the scan window as WPA3. So WPA3 networks will appear but then airgeddon will analyze them after scan to allow you select only those that also offering WPA2"
	
	arr["ENGLISH",216]="No networks found with Handshake captured on the selected file"
	
	arr["ENGLISH",217]="Only one valid target detected on file. BSSID autoselected [\${normal_color}\${bssid}\${blue_color}]"
	
	arr["ENGLISH",218]="Optional tools: checking..."
	
	arr["ENGLISH",219]="Your distro has the essential tools but it hasn't some optional. The script can continue but you can't use some features. It is recommended to install missing tools"
	
	arr["ENGLISH",220]="Locked menu option was chosen"
	
	arr["ENGLISH",221]="Accepted bash version (\${BASH_VERSION}). Minimum required version: \${minimum_bash_version_required}"
	
	arr["ENGLISH",222]="Insufficient bash version (\${BASH_VERSION}). Minimum required version: \${minimum_bash_version_required}"
	
	arr["ENGLISH",223]="airgeddon needs root permissions to work. Launch the script as root user or using \"sudo\""
	
	arr["ENGLISH",224]="The script execution continues from exactly the same point where it was"
	
	arr["ENGLISH",225]="The script can't check if there is a new version because you haven't installed update tools needed"
	
	arr["ENGLISH",226]="Update tools: checking..."
	
	arr["ENGLISH",227]="Working...  "
	
	arr["ENGLISH",228]="                             Developed by \${author}"
	
	arr["ENGLISH",229]="hashcat CPU/GPU attacks"
	
	arr["ENGLISH",230]="3.  (hashcat) Dictionary attack against Handshake capture file"
	
	arr["ENGLISH",231]="4.  (hashcat) Bruteforce attack against Handshake capture file"
	
	arr["ENGLISH",232]="5.  (hashcat) Rule based attack against Handshake capture file"
	
	arr["ENGLISH",233]="Type the path to store the file or press [Enter] to accept the default proposal \${normal_color}[\${hashcat_potpath}]"
	
	arr["ENGLISH",234]="Congratulations!! It seems the key has been decrypted"
	
	arr["ENGLISH",235]="Do you want to save the trophy file with the decrypted password? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",236]="Hashcat trophy file generated successfully at [\${normal_color}\${potenteredpath}\${blue_color}]"
	
	arr["ENGLISH",237]="There is a problem with the files or the entered path. Make sure that ca.pem, server.pem and server.key files exist in the given path. The attack can't be performed"
	
	arr["ENGLISH",238]="Charset selection menu"
	
	arr["ENGLISH",239]="You already have selected a rules file during this session [\${normal_color}\${RULES}\${blue_color}]"
	
	arr["ENGLISH",240]="Do you want to use this already selected rules file? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",241]="The path to the rules file is valid. Script can continue..."
	
	arr["ENGLISH",242]="Enter the path of a rules file:"
	
	arr["ENGLISH",243]="Selected rules file: \${pink_color}\${RULES}\${normal_color}"
	
	arr["ENGLISH",244]="Rule based attacks change the words of the dictionary list according to the rules written in the rules file itself. They are very useful. Some distros have predefined rule files (Kali: /usr/share/hashcat/rules // Wifislax: /opt/hashcat/rules)"
	
	arr["ENGLISH",245]="// \${yellow_color}Chipset:\${normal_color} \${unknown_chipsetvar}"
	
	arr["ENGLISH",246]="Every time you see a text with the prefix \${cyan_color}\${pending_of_translation}\${pink_color} acronym for \"Pending of Translation\", means the translation has been automatically generated and is still pending of review"
	
	arr["ENGLISH",247]="Despite having all essential tools installed, your system uses airmon-zc instead of airmon-ng. In order to work properly you need to install ethtool and you don't have it right now. Please, install it and launch the script again"
	
	arr["ENGLISH",248]="noisy mode, non stop"
	
	arr["ENGLISH",249]="5.  Portuguese"
	
	arr["ENGLISH",250]="If you see any bad translation or just want \${cyan_color}\${pending_of_translation}\${pink_color} marks to dissapear, write me to \${normal_color}\${mail}\${pink_color} to collaborate with translations"
	
	arr["ENGLISH",251]="You have chosen the same language that was selected. No changes will be done"
	
	arr["ENGLISH",252]="7.  Evil Twin attacks menu"
	
	arr["ENGLISH",253]="Evil Twin attacks menu"
	
	arr["ENGLISH",254]="In order to use the Evil Twin just AP and sniffing attacks, you must have another one interface in addition to the wifi network interface will become the AP, which will provide internet access to other clients on the network. This doesn't need to be wifi, can be ethernet"
	
	arr["ENGLISH",255]="without sniffing, just AP"
	
	arr["ENGLISH",256]="5.  Evil Twin attack just AP"
	
	arr["ENGLISH",257]="with sniffing"
	
	arr["ENGLISH",258]="If you use the attack without sniffing, just the AP, you can use any external sniffer script"
	
	arr["ENGLISH",259]="6.  Evil Twin AP attack with sniffing"
	
	arr["ENGLISH",260]="6.  Smooth mode Enterprise Evil Twin"
	
	arr["ENGLISH",261]="7.  Evil Twin AP attack with sniffing and bettercap-sslstrip2"
	
	arr["ENGLISH",262]="without sniffing, captive portal"
	
	arr["ENGLISH",263]="9.  Evil Twin AP attack with captive portal (monitor mode needed)"
	
	arr["ENGLISH",264]="The captive portal attack tries to one of the network clients provide us the password for the wifi network by entering it on our portal"
	
	arr["ENGLISH",265]="Evil Twin deauth"
	
	arr["ENGLISH",266]="0.  Return to Evil Twin attacks menu"
	
	arr["ENGLISH",267]="If you can't deauth clients from an AP using an attack, choose another one :)"
	
	arr["ENGLISH",268]="With this attack, we'll try to deauth clients from the legitimate AP. Hopefully they'll reconnect to our Evil Twin AP"
	
	arr["ENGLISH",269]="To perform an Evil Twin attack you'll need to be very close to the target AP or have a very powerful wifi antenna. Your signal must reach clients equally strong or more than the legitimate AP"
	
	arr["ENGLISH",270]="Evil Twin attack just AP"
	
	arr["ENGLISH",271]="Selected BSSID: \${pink_color}None\${normal_color}"
	
	arr["ENGLISH",272]="Deauthentication chosen method: \${pink_color}\${et_dos_attack}\${normal_color}"
	
	arr["ENGLISH",273]="Selected channel: \${pink_color}None\${normal_color}"
	
	arr["ENGLISH",274]="Selected ESSID: \${pink_color}None\${normal_color}"
	
	arr["ENGLISH",275]="In addition to the software requirements that already meet if you get here, you need to provide target AP data to carry out the attack"
	
	arr["ENGLISH",276]="On top of this screen you can see all that is needed to perform the attack. If any of the parameters has no value, you can enter it manually, or you can go back to select a target and then return here"
	
	arr["ENGLISH",277]="Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",278]="Deauthentication chosen method: \${pink_color}None\${normal_color}"
	
	arr["ENGLISH",279]="Select another interface with internet access:"
	
	arr["ENGLISH",280]="On this screen, it's supposed an additional interface to provide internet access is chosen, but you don't have anyone at this moment"
	
	arr["ENGLISH",281]="The interface \${current_iface_on_messages} you have already selected is not a wifi card. This attack needs a wifi card selected"
	
	arr["ENGLISH",282]="Selected internet interface: \${pink_color}\${internet_interface}\${normal_color}"
	
	arr["ENGLISH",283]="Selected internet interface: \${pink_color}None\${normal_color}"
	
	arr["ENGLISH",284]="Do you want to use this selected interface? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",285]="Selected interface with internet access detected during this session [\${normal_color}\${internet_interface}\${blue_color}]"
	
	arr["ENGLISH",286]="If you don't have a captured Handshake file from the target network you can get it now"
	
	arr["ENGLISH",287]="The script will check for internet access. Please be patient..."
	
	arr["ENGLISH",288]="It seems you have no internet access. This attack needs an interface with internet access"
	
	arr["ENGLISH",289]="It has been verified successfully you have internet access on selected interface. Script can continue..."
	
	arr["ENGLISH",290]="It seems you have internet access but not in the selected interface acting as interface with internet access"
	
	arr["ENGLISH",291]="Evil Twin AP attack with sniffing"
	
	arr["ENGLISH",292]="Evil Twin AP attack with sniffing and bettercap-sslstrip2"
	
	arr["ENGLISH",293]="Evil Twin AP attack with captive portal"
	
	arr["ENGLISH",294]="Detecting resolution... Detected!: \${normal_color}\${resolution}"
	
	arr["ENGLISH",295]="Detecting resolution... Can't be detected!, using standard: \${normal_color}\${resolution}"
	
	arr["ENGLISH",296]="All parameters and requirements are set. The attack is going to start. Multiple windows will be opened, don't close anyone. When you want to stop the attack press [Enter] on this window and the script will automatically close them all"
	
	arr["ENGLISH",297]="Cleaning nftables/iptables and routing rules"
	
	arr["ENGLISH",298]="Evil Twin attack has been started. Press [Enter] key on this window to stop it"
	
	arr["ENGLISH",299]="Restoring interface..."
	
	arr["ENGLISH",300]="If the xdpyinfo command works, the script will be able to calculate your screen resolution and display the windows in a better way. Depending on the system, the package name containing it could be x11-utils, xdpyinfo, xorg-xdpyinfo, etc."
	
	arr["ENGLISH",301]="For enterprise attacks, if you already have the legitimate certificates of the target network and the password, you can use them. If you don't have them, you can use airgeddon to generate some certificates with the same data and use them to make the attack more credible"
	
	arr["ENGLISH",302]="Do you want to store in a file the sniffed captured passwords? \${blue_color}If you answer no (\"n\") they will be only shown on screen \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",303]="Type the path to store the file or press [Enter] to accept the default proposal \${normal_color}[\${default_ettercap_logpath}]"
	
	arr["ENGLISH",304]="Parsing sniffer log..."
	
	arr["ENGLISH",305]="No passwords detected on sniffers' log. File will not be saved"
	
	arr["ENGLISH",306]="Passwords captured by sniffer. File saved at \${normal_color}[\${ettercap_logpath}]"
	
	arr["ENGLISH",307]="7.  Noisy mode Enterprise Evil Twin"
	
	arr["ENGLISH",308]="6.  Russian"
	
	arr["ENGLISH",309]="Sslstrip technique is not infallible. It depends on many factors and not always work. Some browsers such as Mozilla Firefox latest versions are not affected"
	
	arr["ENGLISH",310]="Handshake file selected: \${pink_color}None\${normal_color}"
	
	arr["ENGLISH",311]="Handshake file selected: \${pink_color}\${et_handshake}\${normal_color}"
	
	arr["ENGLISH",312]="No selected Handshake file detected during this session..."
	
	arr["ENGLISH",313]="Handshake selected file detected during this session [\${normal_color}\${et_handshake}\${blue_color}]"
	
	arr["ENGLISH",314]="Handshake file selected: \${pink_color}\${enteredpath}\${normal_color}"
	
	arr["ENGLISH",315]="This attack requires that you have previously a WPA/WPA2 network captured Handshake file"
	
	arr["ENGLISH",316]="An exploration looking for targets is going to be done..."
	
	arr["ENGLISH",317]="If the password for the wifi network is achieved with the captive portal, you must decide where to save it. \${green_color}Type the path to store the file or press [Enter] to accept the default proposal \${normal_color}[\${default_et_captive_portal_logpath}]"
	
	arr["ENGLISH",318]="Choose the language in which network clients will see the captive portal:"
	
	arr["ENGLISH",319]="The captive portal language has been established"
	
	arr["ENGLISH",320]="7.  Greek"
	
	arr["ENGLISH",321]="Do you already have a captured Handshake file? \${blue_color}Answer yes (\"y\") to enter the path or answer no (\"n\") to capture a new one now \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",322]="It has been checked that there is a Handshake of the chosen target network while checking the selected capture file. Script can continue..."
	
	arr["ENGLISH",323]="There is no Handshake/PMKID of the selected network on the capture file"
	
	arr["ENGLISH",324]="Capture file generated successfully at [\${normal_color}\${et_handshake}\${blue_color}]"
	
	arr["ENGLISH",325]="Wait. Be patient..."
	
	arr["ENGLISH",326]="Certificates are invalid or expired, so the attack can't be performed"
	
	arr["ENGLISH",327]="Enter the directory path where the certificates files are located. \${blue_color}Make sure that the ca.pem, server.pem and server.key files exist in the given path:"
	
	arr["ENGLISH",328]="The unique Evil Twin attack in which it's not necessary to have an additional interface with internet access is the captive portal attack"
	
	arr["ENGLISH",329]="Enter the password used during the creation of the certificate files. \${blue_color}Remember that if they were generated using airgeddon, the used password was \${normal_color}\"airgeddon\"\${blue_color}:"
	
	arr["ENGLISH",330]="Private key is invalid or the password is wrong, so the attack can't be performed"
	
	arr["ENGLISH",331]="10. German"
	
	arr["ENGLISH",332]="Before launching an attack against an Enterprise network, bear in mind that \"noisy\" mode will cause legitimate clients stuck trying to authenticate over and over again on the fake network. This could raise suspicions and you could be easily discovered"
	
	arr["ENGLISH",333]="8.  WPS attacks menu"
	
	arr["ENGLISH",334]="WPS attacks menu"
	
	arr["ENGLISH",335]="Selected WPS BSSID: \${pink_color}\${wps_bssid}\${normal_color}"
	
	arr["ENGLISH",336]="Selected WPS channel: \${pink_color}\${wps_channel}\${normal_color}"
	
	arr["ENGLISH",337]="Selected WPS ESSID: \${pink_color}\${wps_essid}\${blue_color} <- can't be used"
	
	arr["ENGLISH",338]="Selected WPS ESSID: \${pink_color}\${wps_essid}\${normal_color}"
	
	arr["ENGLISH",339]="Selected WPS BSSID: \${pink_color}None\${normal_color}"
	
	arr["ENGLISH",340]="Selected WPS channel: \${pink_color}None\${normal_color}"
	
	arr["ENGLISH",341]="Selected WPS ESSID: \${pink_color}None\${normal_color}"
	
	arr["ENGLISH",342]="Pixie Dust attack obtains PIN and password in seconds, but not all access points are affected"
	
	arr["ENGLISH",343]="In order to success on any WPS based attack, you need good signal of target network. We might otherwise get false negatives"
	
	arr["ENGLISH",344]="Some access points can be blocked after failing some PIN connection attempts. It may vary depending on the access point"
	
	arr["ENGLISH",345]="5.  (bully) Custom PIN association"
	
	arr["ENGLISH",346]="7.  (bully) Pixie Dust attack"
	
	arr["ENGLISH",347]="9.  (bully) Bruteforce PIN attack"

	arr["ENGLISH",348]="11. (bully) Known PINs database based attack"
	
	arr["ENGLISH",349]="  N.         BSSID      CHANNEL  PWR   LOCKED  ESSID"
	
	arr["ENGLISH",350]="\${blue_color}You have selected a locked WPS network \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",351]="WPS locked network: \${pink_color}\${wps_locked}\${normal_color}"
	
	arr["ENGLISH",352]="WPS locked network: \${pink_color}None\${normal_color}"
	
	arr["ENGLISH",353]="Checking to solve possible \"bad FCS\" problem if exists. Parameterizing..."
	
	arr["ENGLISH",354]="Done! parameter set"
	
	arr["ENGLISH",355]="It seems this interface was parametrized before. It's not necessary to check again"
	
	arr["ENGLISH",356]="Some combinations don't work well. Such as reaver and Ralink chipset cards. If your card has this chipset is recommended to use bully"
	
	arr["ENGLISH",357]="6.  (reaver) Custom PIN association"
	
	arr["ENGLISH",358]="8.  (reaver) Pixie Dust attack"
	
	arr["ENGLISH",359]="10. (reaver) Bruteforce PIN attack"
	
	arr["ENGLISH",360]="12. (reaver) Known PINs database based attack"
	
	arr["ENGLISH",361]="WPA/WPA2/WPA3 filter enabled in scan. When started, press [Ctrl+C] to stop..."
	
	arr["ENGLISH",362]="Custom PIN set to \${normal_color}\${custom_pin}"
	
	arr["ENGLISH",363]="Type custom PIN (8 digits):"
	
	arr["ENGLISH",364]="BSSID set to \${normal_color}\${wps_bssid}"
	
	arr["ENGLISH",365]="Channel set to \${normal_color}\${wps_channel}"
	
	arr["ENGLISH",366]="No filters enabled on scan. When started, press [Ctrl+C] to stop..."
	
	arr["ENGLISH",367]="You have bully installed (v\${bully_version}), but not required version. To perform Pixie Dust integrated bully attack you must have at least version v\${minimum_bully_pixiewps_version}"
	
	arr["ENGLISH",368]="You have bully installed (v\${bully_version}). You meet the version requirement to perform Pixie Dust integrated bully attack (minimum version v\${minimum_bully_pixiewps_version}). Script can continue..."
	
	arr["ENGLISH",369]="To perform the Pixie Dust integrated attack with reaver or bully, you must have installed at least \${minimum_reaver_pixiewps_version} version for reaver and \${minimum_bully_pixiewps_version} for bully"
	
	arr["ENGLISH",370]="You have reaver installed (v\${reaver_version}). You meet the version requirement to perform Pixie Dust integrated reaver attack (minimum version v\${minimum_reaver_pixiewps_version}). Script can continue..."
	
	arr["ENGLISH",371]="You have reaver installed (v\${reaver_version}), but not required version. To perform Pixie Dust integrated reaver attack you must have at least version v\${minimum_reaver_pixiewps_version}"
	
	arr["ENGLISH",372]="This action can't be performed without known PINs database file"
	
	arr["ENGLISH",373]="The known PINs database file exists. Script can continue..."
	
	arr["ENGLISH",374]="Local PINs database file (\${known_pins_dbfile}) can't be found in the script folder. It will be attempted to download"
	
	arr["ENGLISH",375]="It seems you have no internet access"
	
	arr["ENGLISH",376]="Local PINs database file (\${known_pins_dbfile}) was found. Anyway a check for a newer will be performed"
	
	arr["ENGLISH",377]="An up-to-date PINs database file has been successfully downloaded"
	
	arr["ENGLISH",378]="An error occurred while trying to download the PINs database file"
	
	arr["ENGLISH",379]="Check of the PINs database file has already been done. It will not be done again..."
	
	arr["ENGLISH",380]="Do you want to try again next time you launch this attack for this session? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",381]="An error occurred while trying to access to the checksum file of remote PINs database"
	
	arr["ENGLISH",382]="Checksums of the local and remote files match. Your PINs database file is up-to-date"
	
	arr["ENGLISH",383]="It seems there is a more up-to-date PINs database file. It will be downloaded..."
	
	arr["ENGLISH",384]="Searching in PINs database. Please be patient..."
	
	arr["ENGLISH",385]="Only one match found in the PINs database"
	
	arr["ENGLISH",386]="\${counter_pins_found} matching PINs have been found in the PINs database"
	
	arr["ENGLISH",387]="No matches found in the PINs database"
	
	arr["ENGLISH",388]="Calculating and adding possible PINs using common known algorithms (ComputePIN, EasyBox, etc.) ..."
	
	arr["ENGLISH",389]="PINs calculated by algorithms have been added. The attack will be launched with a total of \${counter_pins_found} PINs"
	
	arr["ENGLISH",390]="Some access points have only PBC (Push Button Connect) enabled and you can't connect via WPS if you don't press the physical button on the device"
	
	arr["ENGLISH",391]="Timeout set to \${normal_color}\${timeout}\${blue_color} seconds"
	
	arr["ENGLISH",392]="airgeddon detected you already have set up the country code for 5Ghz band \"\${normal_color}\${country_code}\${blue_color}\". Anyway, the 5Ghz band has several channels that may not be available for operation due to country restrictions (DFS channels). If the target network uses one of these channels, the attack may not be successful"
	
	arr["ENGLISH",393]="Type value in seconds (\${min_max_timeout}) for timeout or press [Enter] to accept the proposal [\${normal_color}\${timeout_shown}\${green_color}]:"
	
	arr["ENGLISH",394]="You have selected a 5Ghz target network and the \"DoS pursuit mode\", but the second interface needed to perform the attack doesn't support the 5Ghz band or it is disabled, so the attack can't be performed"
	
	arr["ENGLISH",395]="Skipping intro, more window size needed"
	
	arr["ENGLISH",396]="8.  Evil Twin AP attack with sniffing and bettercap-sslstrip2/BeEF"
	
	arr["ENGLISH",397]="Evil Twin AP attack with sniffing and bettercap-sslstrip2/BeEF"
	
	arr["ENGLISH",398]="Type the path to store the file or press [Enter] to accept the default proposal \${normal_color}[\${default_bettercap_logpath}]"
	
	arr["ENGLISH",399]="Passwords captured by sniffer. File saved at \${normal_color}[\${bettercap_logpath}]"
	
	arr["ENGLISH",400]="On Evil Twin attack with BeEF integrated, in addition to obtaining keys using sniffing techniques, you can try to control the client's browser launching numerous attack vectors. The success of these will depend on many factors such as the kind of client's browser and its version"
	
	arr["ENGLISH",401]="The beef package you have installed is not BeEF (Browser Exploitation Framework). You have Beef (Flexible Brainfuck interpreter) installed. Both executables have the same name and can lead to confusion. Uninstall it and install what airgeddon needs if you want to use that feature. Installation guide: \${beef_installation_url}"
	
	arr["ENGLISH",402]="Enter the absolute path of the directory where BeEF is installed:"
	
	arr["ENGLISH",403]="The directory you entered doesn't exist"
	
	arr["ENGLISH",404]="The entered path isn't absolute. An absolute path must always begin with \"/\""
	
	arr["ENGLISH",405]="Checking BeEF..."
	
	arr["ENGLISH",406]="No BeEF executable was detected in given directory"
	
	arr["ENGLISH",407]="BeEF preparation"
	
	arr["ENGLISH",408]="If you installed BeEF manually, airgeddon might not be able to find it and the attack option can appear as restricted. You can try to solve it using the special menu option to fix this. It will work only if BeEF is already correctly installed and your unique problem is the script is not detecting it"
	
	arr["ENGLISH",409]="1.  Evil Twin AP attack with sniffing and bettercap-sslstrip2/BeEF"
	
	arr["ENGLISH",410]="2.  Try to troubleshoot manually installed BeEF dependency problem"
	
	arr["ENGLISH",411]="WPS filter enabled in scan. When started, press [Ctrl+C] to stop..."
	
	arr["ENGLISH",412]="You don't need to perform this action. Your BeEF is operational"
	
	arr["ENGLISH",413]="airgeddon fixed the problem. Your BeEF is operational"
	
	arr["ENGLISH",414]="You don't have curl installed. Is not possible to download PINs database file"
	
	arr["ENGLISH",415]="\${blue_color}airgeddon knows you have BeEF installed and you pass the validation, but it was unable to locate the right directory path where you have BeEF installed. Knowing the location gives some advantages for the execution because its configuration file can be customized instead of generic. \${green_color}Do you want to enter it manually? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",416]="    You can run BeEF, but it is better if you run the second option before"
	
	arr["ENGLISH",417]="An unexpected error occurred, redirecting to the menu"
	
	arr["ENGLISH",418]="Restoring MAC"
	
	arr["ENGLISH",419]="Do you want to spoof your MAC address during this attack? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",420]="It has been detected that you are running airgeddon inside a Docker container. During this attack hostapd is used to create a fake AP. This component often conflicts with network-manager. From inside the container, airgeddon can't handle it. If you have network-manager installed on your host machine, close it or kill the conflicting processes or you'll get an error. For more information, see the Docker section of the Wiki: \${normal_color}\${urlgithub_wiki}/Docker"
	
	arr["ENGLISH",421]="Doubts? Visit our Wiki: \${normal_color}\${urlgithub_wiki}"
	
	arr["ENGLISH",422]="The automatic update has been disabled when airgeddon is running in a Docker container. If you want to update it, download again the image tagged as \"latest\""
	
	arr["ENGLISH",423]="5.  WEP \"All-in-One\" attack"
	
	arr["ENGLISH",424]="The selected network is invalid. Encryption type of target network must be WEP"
	
	arr["ENGLISH",425]="You have a valid WEP target network selected. Script can continue..."
	
	arr["ENGLISH",426]="9.  WEP attacks menu"
	
	arr["ENGLISH",427]="WEP attacks menu"
	
	arr["ENGLISH",428]="If real clients exist connected to the WEP encrypted network, the process will be significantly accelerated. Enough IVs (Initialization Vectors) will be catched faster"
	
	arr["ENGLISH",429]="The WEP \"All-in-One\" attack combines different techniques to generate enough traffic to decrypt the key (Caffe Latte, Hirte, Replay, Chop-Chop, Fragmentation, Fake association, etc.)"
	
	arr["ENGLISH",430]="If the password for the wifi network is obtained with the \"All-in-One\" WEP attack, you should decide where to save it. \${green_color}Type the path to store the file or press [Enter] to accept the default proposal \${normal_color}[\${wep_potpath}]"
	
	arr["ENGLISH",431]="The WEP protocol had a bad design and can be cracked in a few minutes if we have enough generated traffic"
	
	arr["ENGLISH",432]="Captured IVs (Initialization Vectors) are shown on airodump capture window as \"Data\""
	
	arr["ENGLISH",433]="Some access points are not vulnerable to certain WEP attacks. Like for example the Chop-Chop attack, that only affects some of them"
	
	arr["ENGLISH",434]="WEP \"All-in-One\" attack has been started. Press [Enter] key on this window to stop it"
	
	arr["ENGLISH",435]="Error trying to change interface mode. During the process the interface name must be changed, but it looks like you already have an interface occupying the name that would be needed (\${normal_color}\${desired_interface_name}\${red_color})"
	
	arr["ENGLISH",436]="The hashcat version you have installed (\${hashcat_version}) is greater or equal than \${hashcat_hccapx_version} so you need to convert the capture files to \"hccapx\" format, airgeddon will do this automatically. To do this you need a converter that is not present on your system (hashcat-utils package), install it to be able to perform this attack"
	
	arr["ENGLISH",437]="If you enjoyed the script and found it useful, you can support the project by making a donation. Through PayPal (\${normal_color}\${mail}\${pink_color}) or sending a fraction of cryptocurrency (\${normal_color}Bitcoin, Ethereum, Litecoin...\${pink_color}). Any amount, no matter how small (1, 2, 5 $/€) is welcome. More information and direct links to do it at: \${normal_color}\${urlgithub_wiki}/Contributing"
	
	arr["ENGLISH",438]="We are looking for translators to other languages. If you want to see airgeddon in your native language and you also know english, contact us. More information at: \${normal_color}\${urlgithub_wiki}/Contributing"
	
	arr["ENGLISH",439]="\${blue_color}You haven't selected any target, you'll be prompted to input data manually. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",440]="Aircrack trophy file generated successfully at [\${normal_color}\${aircrackpotenteredpath}\${blue_color}]"
	
	arr["ENGLISH",441]="Type the path to store the file or press [Enter] to accept the default proposal \${normal_color}[\${aircrack_potpath}]"
	
	arr["ENGLISH",442]="If you install ccze you'll see some parts of airgeddon in a colorized way with better aspect. It's not a requirement or a dependency, but it will improve the user experience"
	
	arr["ENGLISH",443]="Options and language menu"
	
	arr["ENGLISH",444]="12. Options and language menu"
	
	arr["ENGLISH",445]="If you have ccze installed and are experiencing display errors or glitches on some windows, you should disable extended colorization in the options and language menu"
	
	arr["ENGLISH",446]="0.  Return to options menu"
	
	arr["ENGLISH",447]="14. Set permanently airgeddon's language to the current one"
	
	arr["ENGLISH",448]="If you installed airgeddon from a repository, you should not enable automatic updates. airgeddon will be updated when there is a new version in the repository"
	
	arr["ENGLISH",449]="2.  Enable automatic updates permanently"
	
	arr["ENGLISH",450]="5.  Enable extended colorization permanently"
	
	arr["ENGLISH",451]="Automatic updates: \${pink_color}Enabled\${normal_color}"
	
	arr["ENGLISH",452]="Automatic updates: \${pink_color}Disabled\${normal_color}"
	
	arr["ENGLISH",453]="Extended colorization: \${pink_color}Enabled\${normal_color}"
	
	arr["ENGLISH",454]="Extended colorization: \${pink_color}Disabled\${normal_color}"
	
	arr["ENGLISH",455]="2.  Disable automatic updates permanently"
	
	arr["ENGLISH",456]="5.  Disable extended colorization permanently"
	
	arr["ENGLISH",457]="\${blue_color}Automatic updates are going to be disabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",458]="\${blue_color}Automatic updates are going to be enabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",459]="If you installed airgeddon from a repository you shouldn't enable this option. airgeddon will be updated when the repositories do. If you continue, make sure you know what you are doing, or you could cause problems with update flow"
	
	arr["ENGLISH",460]="Automatic updates have been enabled"
	
	arr["ENGLISH",461]="Automatic updates have been disabled"
	
	arr["ENGLISH",462]="\${blue_color}Extended colorization is going to be disabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",463]="\${blue_color}Extended colorization is going to be enabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",464]="You don't have the ccze package installed so any change on this option will have no effect until you install it"
	
	arr["ENGLISH",465]="Extended colorization has been enabled"
	
	arr["ENGLISH",466]="Extended colorization has been disabled"
	
	arr["ENGLISH",467]="6.  Enable startup language autodetection permanently"
	
	arr["ENGLISH",468]="6.  Disable startup language autodetection permanently"
	
	arr["ENGLISH",469]="\${blue_color}Startup language autodetection will be disabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",470]="\${blue_color}Startup language autodetection will be enabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",471]="Any permanent change of language you have will be lost on the next start if you enable this option!!"
	
	arr["ENGLISH",472]="Startup language autodetection has been enabled"
	
	arr["ENGLISH",473]="Startup language autodetection has been disabled"
	
	arr["ENGLISH",474]="Startup language autodetection: \${pink_color}Enabled\${normal_color}"
	
	arr["ENGLISH",475]="Startup language autodetection: \${pink_color}Disabled\${normal_color}"
	
	arr["ENGLISH",476]="A graphical X windows system has been detected but airgeddon was unable to detect resolution. Try executing \"\${normal_color}xhost +\${red_color}\" command before launching airgeddon. If it does not work, probably your system is missing one of these two commands \"loginctl\", \"xdpyinfo\". Install the needed packages and then try again. For the first one, package name is systemd, for the second one there are some possibilities (it may vary depending on your Linux distribution). Some suggested package names are: x11-utils, xdpyinfo or xorg-xdpyinfo"
	
	arr["ENGLISH",477]="The options in this menu containing the word \"permanently\" modify airgeddon to save the settings for the next time that is to be launched. However, you can always return to this menu to change the value of the option again"
	
	arr["ENGLISH",478]="\${blue_color}Language is going to be set permanently to the current one, so on the next start of airgeddon it will be used directly. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",479]="This change conflicts with the startup language autodetection which is currently enabled. It will be disabled automatically in order to perform the change"
	
	arr["ENGLISH",480]="Current language is the same of permanent language already set. No changes will be done"
	
	arr["ENGLISH",481]="Language set to the current one permanently"
	
	arr["ENGLISH",482]="8.  Italian"
	
	arr["ENGLISH",483]="The attack in \"smooth\" mode will be dismantled as soon as a credential is captured to let clients reconnect again to the legitimate network. This reduces the possibility of being discovered, looking for some users as a punctual wireless network malfunction"
	
	arr["ENGLISH",484]="Root permissions successfully detected"
	
	arr["ENGLISH",485]="\${blue_color}Some PINs have been added calculated using the algorithms (ComputePIN, EasyBox, etc.), however you can add one more (Arcadyan). Calculating it requires certain data and a background scan will have to be performed. The process may be very slow. \${green_color}Do you want to proceed with the calculation to add it? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",486]="It's not possible to generate PIN with Arcadyan algorithm. To be able to do it, update \"wash\" (included in reaver package) to a newer version including the necessary \"-j\" option (v\${minimum_wash_json_version})"
	
	arr["ENGLISH",487]="PIN generated using Arcadyan algorithm (\${normal_color}\${arcadyan_pin}\${yellow_color})"
	
	arr["ENGLISH",488]="PIN can't be generated using Arcadyan algorithm. Failed to collect a complete \"probe\" response from the access point. Probably because of low signal quality"
	
	arr["ENGLISH",489]="Attempting to collect a complete \"probe\" response from the target access point. This process can take up to 4 minutes..."
	
	arr["ENGLISH",490]="The Arcadyan algorithm needs a very specific data to calculate the PIN (the serial number of the access point). Getting this data can take a lot of time. You can optionally choose to try to generate it. This generated PIN is very useful in networks of type Orange-XXXX"
	
	arr["ENGLISH",491]="Arcadyan algorithm is not useful for the selected target network, a valid value can't be calculated"
	
	arr["ENGLISH",492]="The Arcadyan algorithm can't be calculated. Although you chose the bully option for the attack, you need to use wash (included in reaver package) to calculate that PIN and you don't have it installed. The script will continue the attack without including it"
	
	arr["ENGLISH",493]="The Arcadyan algorithm PIN has already been calculated for this target (\${normal_color}\${wps_data_array[\${wps_bssid},'Arcadyan']}\${yellow_color}). There is no need to calculate it again"
	
	arr["ENGLISH",494]="14. Offline PIN generation using algorithms and database"
	
	arr["ENGLISH",495]="Offline PIN generation menu"
	
	arr["ENGLISH",496]="5.  Search in PIN database"
	
	arr["ENGLISH",497]="0.  Return to WPS attacks menu"
	
	arr["ENGLISH",498]="choose database or algorithm"
	
	arr["ENGLISH",499]="Showing matches in the PIN database..."
	
	arr["ENGLISH",500]="Showing calculated PIN using ComputePIN algorithm..."
	
	arr["ENGLISH",501]="Showing calculated PIN using EasyBox algorithm..."
	
	arr["ENGLISH",502]="Showing calculated PIN using Arcadyan algorithm..."
	
	arr["ENGLISH",503]="It's not necessary to perform the scan again to calculate the Arcadyan algorithm PIN. This has already been done in this session"
	
	arr["ENGLISH",504]="\${blue_color}This PIN calculation process is not entirely offline. A complete \"probe\" response is required from the target access point to obtain a necessary data. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",505]="Do you want to enable \"DoS pursuit mode\"? \${blue_color}This will launch again the attack if target AP change its channel countering \"channel hopping\" \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",506]="DoS attack with the \"DoS pursuit mode\" enabled will start when you press [Enter] on this window. To stop it you must press [Ctrl+C] or close attack window"
	
	arr["ENGLISH",507]="Channel change detected. Relaunching again DoS attack on \"DoS pursuit mode\" now on channel \${normal_color}\${channel}"
	
	arr["ENGLISH",508]="\"DoS pursuit mode\" can be unstable for this kind of DoS attack. If you are not obtaining an optimal result just select another kind of attack"
	
	arr["ENGLISH",509]="If you want to integrate \"DoS pursuit mode\" on an Evil Twin attack, another additional wifi interface in monitor mode will be needed to be able to perform it"
	
	arr["ENGLISH",510]="On this screen, it's supposed an additional wifi interface is chosen, but you don't have anyone at this moment"
	
	arr["ENGLISH",511]="Select another wireless interface:"
	
	arr["ENGLISH",512]="\"DoS pursuit mode\" interface: \${pink_color}\${secondary_wifi_interface}\${normal_color}"
	
	arr["ENGLISH",513]="Interface will be tried to be changed to monitor mode automatically"
	
	arr["ENGLISH",514]="Interface \${pink_color}\${current_iface_on_messages}\${blue_color} selected. Mode: \${pink_color}\${ifacemode}\${blue_color}. Supported bands: \${pink_color}\${interfaces_band_info['main_wifi_interface','text']}\${normal_color}"
	
	arr["ENGLISH",515]="You have selected a 5Ghz band channel but your wifi card doesn't support 5Ghz or it is disabled. The operation can't be performed"
	
	arr["ENGLISH",516]="It is known that the software used in the 5Ghz band still presents some problems sometimes. For example airodump, that when scanning networks can show a value \"-1\" on channel depending on the card chipset and the driver. It is also known that Ralink chipsets sometimes are getting errors on high channels \""
	
	arr["ENGLISH",517]="Set channel (2.4Ghz 1-14) or (5Ghz 36|38|40|44|46|48|52|54|56|60|62|64|100|102|104|108|110|112):"
	
	arr["ENGLISH",518]="After capturing credentials during an Enterprise network attack, remember that you can try to decrypt NTLM hashes using the \"Offline WPA/WPA2 decrypt menu\""
	
	arr["ENGLISH",519]="11. Turkish"
	
	arr["ENGLISH",520]="Enterprise Evil Twin deauth"
	
	arr["ENGLISH",521]="0.  Return to Enterprise attacks menu"

	arr["ENGLISH",522]="Smooth mode Enterprise Evil Twin"

	arr["ENGLISH",523]="Noisy mode Enterprise Evil Twin"

	arr["ENGLISH",524]="Enterprise Evil Twin attack has been started. Press [Enter] key on this window to stop it"

	arr["ENGLISH",525]="If a hash or password is obtained during the Evil Twin Enterprise attack, you should decide where to save it. \${green_color} More than one file will be saved, type the path (directory) to store the file/s. If the directory does not exist, airgeddon will create it. Press [Enter] to accept the default proposal \${normal_color}[\${enterprise_potpath}]"

	arr["ENGLISH",526]="Directory does not exist or you don't have permission to write"

	arr["ENGLISH",527]="WPA/WPA2/WPA3 and Enterprise filter enabled. It's not possible to filter Enterprise networks during the scan, the filter will be applied in network selection menu in which only Enterprise networks will be shown. When started, press [Ctrl+C] to stop..."

	arr["ENGLISH",528]="It has been detected that you are running airgeddon inside a Docker container. During this attack hostapd-wpe is used to create a fake AP. This component often conflicts with network-manager. From inside the container, airgeddon can't handle it. If you have network-manager installed on your host machine, close it or kill the conflicting processes or you'll get an error. For more information, see the Docker section of the Wiki: \${normal_color}\${urlgithub_wiki}/Docker"

	arr["ENGLISH",529]="It seems that nothing was captured during the Enterprise Evil Twin attack"

	arr["ENGLISH",530]="Contratulations!! It seems you captured some hashes"

	arr["ENGLISH",531]="Contratulations!! It seems you captured some plain text password/s"

	arr["ENGLISH",532]="Contratulations!! It seems you captured hashes and plain text passwords"

	arr["ENGLISH",533]="The captured files were saved on directory [\${normal_color}\${enterprise_completepath}\${blue_color}]\${normal_color}"

	arr["ENGLISH",534]="1.  Personal"

	arr["ENGLISH",535]="2.  Enterprise"

	arr["ENGLISH",537]="Do you want to try to decrypt captured stuff? \${blue_color}Asleap tool will be used. If you answer no \"n\" you'll can try to do it later using hashcat or john the ripper from the offline WPA/WPA2 decrypt menu \${normal_color}\${visual_choice}"

	arr["ENGLISH",538]="The password for the username \${normal_color}\${enterprise_username}\${blue_color} will be tried to be decrypted with asleap tool using challenge and response: \${normal_color}\${enterprise_captured_challenges_responses[\${enterprise_username}]}"

	arr["ENGLISH",539]="Asleap trophy file generated successfully at [\${normal_color}\${path_to_asleap_trophy}\${blue_color}]"

	arr["ENGLISH",540]="It seems we failed... try it again using another dictionary or choose bruteforce/rule based attack from the offline WPA/WPA2 decrypt menu"

	arr["ENGLISH",541]="Do you want to retry asleap attack using another dictionary? \${normal_color}\${visual_choice}"

	arr["ENGLISH",542]="You captured hash only for one user. Autoselected"

	arr["ENGLISH",543]="Chosen option is invalid. Select one number shown in the menu"

	arr["ENGLISH",544]="john the ripper CPU, non GPU attacks"

	arr["ENGLISH",545]="1.  (john the ripper) Dictionary attack against capture file"

	arr["ENGLISH",546]="2.  (john the ripper + crunch) Bruteforce attack against capture file"

	arr["ENGLISH",547]="John the ripper trophy file generated successfully at [\${normal_color}\${jtrpotenteredpath}\${blue_color}]"

	arr["ENGLISH",548]="asleap CPU"

	arr["ENGLISH",549]="6.  (asleap) Challenge/response dictionary attack"

	arr["ENGLISH",550]="3.  (hashcat) Dictionary attack against capture file"

	arr["ENGLISH",551]="4.  (hashcat) Bruteforce attack against capture file"

	arr["ENGLISH",552]="5.  (hashcat) Rule based attack against capture file"

	arr["ENGLISH",553]="Type challenge (example: 00:11:22:33:44:55:66:77):"

	arr["ENGLISH",554]="Type response (example: 00:01:02:03:04:05:06:07:08:09:0a:0b:0c:0d:0e:0f:10:11:12:13:14:15:16:17):"

	arr["ENGLISH",555]="Type the path to store the file or press [Enter] to accept the default proposal \${normal_color}[\${asleap_potpath}]"

	arr["ENGLISH",556]="4.  Enable basic colorization permanently"

	arr["ENGLISH",557]="4.  Disable basic colorization permanently"

	arr["ENGLISH",559]="\${blue_color}Basic colorization is going to be enabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"

	arr["ENGLISH",560]="Basic colorization has been disabled"

	arr["ENGLISH",561]="Basic colorization has been enabled"

	arr["ENGLISH",562]="This setting will have no effect until you enable basic colorization"

	arr["ENGLISH",564]="Basic colorization: \${pink_color}Disabled\${normal_color}"

	arr["ENGLISH",565]="3.  Disable skip intro permanently"

	arr["ENGLISH",566]="3.  Enable skip intro permanently"

	arr["ENGLISH",567]="Skip intro: \${pink_color}Enabled\${normal_color}"

	arr["ENGLISH",568]="Skip intro: \${pink_color}Disabled\${normal_color}"

	arr["ENGLISH",569]="\${blue_color}Skip intro is going to be disabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"

	arr["ENGLISH",570]="\${blue_color}Skip intro is going to be enabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"

	arr["ENGLISH",571]="Skip intro has been disabled"

	arr["ENGLISH",572]="Skip intro has been enabled"

	arr["ENGLISH",573]="7.  Disable silent checks permanently"

	arr["ENGLISH",574]="7.  Enable silent checks permanently"

	arr["ENGLISH",575]="Silent checks: \${pink_color}Enabled\${normal_color}"

	arr["ENGLISH",576]="Silent checks: \${pink_color}Disabled\${normal_color}"

	arr["ENGLISH",577]="\${blue_color}Silent checks will be disabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"

	arr["ENGLISH",578]="\${blue_color}Silent checks will be enabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"

	arr["ENGLISH",579]="Silent checks has been disabled"

	arr["ENGLISH",580]="Silent checks has been enabled"

	arr["ENGLISH",581]="You launched airgedddon with silent checks enabled. Disable that setting in order to see what is the problem"

	arr["ENGLISH",582]="Print hints: \${pink_color}Enabled\${normal_color}"

	arr["ENGLISH",583]="Print hints: \${pink_color}Disabled\${normal_color}"

	arr["ENGLISH",584]="8.  Disable print hints permanently"

	arr["ENGLISH",585]="8.  Enable print hints permanently"

	arr["ENGLISH",586]="\${blue_color}Print hints will be disabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"

	arr["ENGLISH",587]="\${blue_color}Print hints will be enabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"

	arr["ENGLISH",588]="Print hints has been disabled"

	arr["ENGLISH",589]="Print hints has been enabled"

	arr["ENGLISH",590]="You can modify manually \${rc_path} file to change some options. You can also launch \"flags\" on the command line. More info at: \${normal_color}\${urlgithub_wiki}/Options"

	arr["ENGLISH",591]="Changing these options \${rc_path} is modified as well and the changes are permanent"

	arr["ENGLISH",592]="9.  Disable 5Ghz permanently"

	arr["ENGLISH",593]="9.  Enable 5Ghz permanently"

	arr["ENGLISH",594]="5Ghz: \${pink_color}Enabled\${normal_color}"

	arr["ENGLISH",595]="5Ghz: \${pink_color}Disabled\${normal_color}"

	arr["ENGLISH",596]="\${blue_color}5Ghz will be disabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"

	arr["ENGLISH",597]="\${blue_color}5Ghz will be enabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"

	arr["ENGLISH",598]="5Ghz has been disabled"

	arr["ENGLISH",599]="5Ghz has been enabled"

	arr["ENGLISH",600]="You already have selected a capture file during this session [\${normal_color}\${hashcatenterpriseenteredpath}\${blue_color}]"
	
	arr["ENGLISH",601]="Selected file has an invalid hashcat enterprise hashes format"
	
	arr["ENGLISH",602]="Selected file has a valid hashcat enterprise hashes format"
	
	arr["ENGLISH",603]="Selected hashcat enterprise captured file: \${pink_color}\${hashcatenterpriseenteredpath}\${normal_color}"
	
	arr["ENGLISH",604]="Selected hashcat enterprise captured file: \${pink_color}None\${normal_color}"
	
	arr["ENGLISH",605]="Selected john the ripper enterprise captured file: \${pink_color}\${jtrenterpriseenteredpath}\${normal_color}"
	
	arr["ENGLISH",606]="Selected john the ripper enterprise captured file: \${pink_color}None\${normal_color}"
	
	arr["ENGLISH",607]="Selected file has an invalid john the ripper enterprise hashes format"
	
	arr["ENGLISH",608]="Selected file has a valid john the ripper enterprise hashes format"
	
	arr["ENGLISH",609]="You already have selected a capture file during this session [\${normal_color}\${jtrenterpriseenteredpath}\${blue_color}]"
	
	arr["ENGLISH",610]="Hashes obtained during an enterprise wifi network attack can be also decrypted using john the ripper tool. Dictionary or bruteforce attacks can be performed from airgeddon menus"
	
	arr["ENGLISH",611]="Type the path to store the file or press [Enter] to accept the default proposal \${normal_color}[\${jtr_potpath}]"
	
	arr["ENGLISH",612]="No enterprise networks found"
	
	arr["ENGLISH",613]="Warning. Please check \${rc_path} file or command line flags. Invalid value on \${normal_color}\${error_var_name}\${yellow_color} variable. The default value \${normal_color}\${error_var_default_value}\${yellow_color} will be used"
	
	arr["ENGLISH",614]="Warning. Please check \${rc_path} file. Configuration variable \${normal_color}\${error_var_name}\${yellow_color} not found. The default value \${normal_color}\${error_var_default_value}\${yellow_color} will be used"
	
	arr["ENGLISH",615]="There is an error in your configuration. Please check the \${rc_path} file. You have enabled the option to force the use of iptables instead of nftables (\${normal_color}AIRGEDDON_FORCE_IPTABLES\${red_color}) but your system doesn't have iptables installed. Disable this option or install iptables to fix the problem"
	
	arr["ENGLISH",616]="10. Change windows handling method to tmux"
	
	arr["ENGLISH",617]="10. Change windows handling method to xterm"
	
	arr["ENGLISH",618]="Current windows handling: \${pink_color}xterm\${normal_color}\${reboot_required_text}"
	
	arr["ENGLISH",619]="Current windows handling: \${pink_color}tmux\${normal_color}\${reboot_required_text}"
	
	arr["ENGLISH",620]="The option has been modified in the configuration file. Restart the script in order to make the changes to take effect"
	
	arr["ENGLISH",621]="It's not possible to run airgeddon in the current tmux session. This session will be sent to background and a new tmux session will be created for launching airgeddon"
	
	arr["ENGLISH",622]="13. (reaver) Null PIN attack"
	
	arr["ENGLISH",623]="You have reaver installed (v\${reaver_version}). You meet the version requirement to perform null PIN integrated reaver attack (minimum version v\${minimum_reaver_nullpin_version}). Script can continue..."
	
	arr["ENGLISH",624]="You have reaver installed (v\${reaver_version}), but not required version. To perform null PIN integrated reaver attack you must have at least version v\${minimum_reaver_nullpin_version}"
	
	arr["ENGLISH",625]="Null PIN attack is pretty fast and achieve the password almost instantly but only a few access points are vulnerable. Some of them are \"Huawei HG658C\", \"ZTE H218N\", \"ZTE H108N\" and \"ZTE H298N\""
	
	arr["ENGLISH",626]="Since airgeddon 9.20 version, tmux is supported and it can be used instead of xterm as windows handler. Script can be launched in a headless environment without a graphical X window system. It is recommended only for advanced users. Like any other option, it can be configured on the options menu, on the \${rc_path} options file or launched using \${normal_color}AIRGEDDON_WINDOWS_HANDLING\${pink_color} \"flag\" in the command line. More information about options customization at Wiki: \${normal_color}\${urlgithub_wiki}/Options"
	
	arr["ENGLISH",627]="certificates"
	
	arr["ENGLISH",628]="5.  Create custom certificates"
	
	arr["ENGLISH",629]="Generating custom certificates, we will make our attack to an enterprise network more credible"
	
	arr["ENGLISH",630]="Enter two letter country code (US, ES, FR):"
	
	arr["ENGLISH",631]="Enter state or province (Madrid, New Jersey):"
	
	arr["ENGLISH",632]="Enter locale (Hong Kong, Dublin):"
	
	arr["ENGLISH",633]="Enter organization name (Evil Corp):"
	
	arr["ENGLISH",634]="Enter email (tyrellwellick@ecorp.com):"
	
	arr["ENGLISH",635]="Enter the \"common name\" (CN) for cert (ecorp.com):"
	
	arr["ENGLISH",636]="There is an error in your configuration. Please check the \${rc_path} file. You have enabled the option to force the use of mdk3 (\${normal_color}AIRGEDDON_MDK_VERSION\${red_color}) but your system doesn't have mdk3 installed. Disable this option or install mdk3 to fix the problem"
	
	arr["ENGLISH",637]="11. Set mdk version to mdk3"
	
	arr["ENGLISH",638]="11. Set mdk version to mdk4"
	
	arr["ENGLISH",639]="\${blue_color}mdk version is going to be changed. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",640]="mdk version was successfully changed to \${mdk_command}"
	
	arr["ENGLISH",641]="Selected mdk version: \${pink_color}\${mdk_command}\${normal_color}"
	
	arr["ENGLISH",642]="Certificates are being generated. Please be patient, the process can take some time..."
	
	arr["ENGLISH",643]="Certificates files were created successfully, you should decide where to save them. \${green_color}Type the path to store the files or press [Enter] to accept the default proposal \${normal_color}[\${enterprisecertspath}]"
	
	arr["ENGLISH",644]="Certificates (ca.pem, server.pem and server.key) were saved successfully to selected path [\${normal_color}\${enterprisecerts_completepath}\${blue_color}]. The expiration time for these certificates is \${normal_color}10\${blue_color} years and the password used on the creation process was \"\${normal_color}\${certspass}\${blue_color}\""
	
	arr["ENGLISH",645]="\${green_color}Do you want to use custom certificates during the attack? \${blue_color}If you answer no \"n\", airgeddon will use ones by default. if you answer yes \"y\" then you will have to provide their path and know the password with which they were generated \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",646]="\${blue_color}airgeddon has detected that custom certificates have been generated during this session. \${green_color}Do you want to use them during the attack? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",647]="Default certificates will be used"
	
	arr["ENGLISH",648]="Previously generated by airgeddon certificates will be used"
	
	arr["ENGLISH",649]="Validating certificates..."
	
	arr["ENGLISH",650]="Certificates are valid. Attack can be performed"
	
	arr["ENGLISH",651]="12. Disable plugins system permanently"
	
	arr["ENGLISH",652]="12. Enable plugins system permanently"
	
	arr["ENGLISH",653]="Plugins system: \${pink_color}Enabled\${normal_color}\${reboot_required_text}"
	
	arr["ENGLISH",654]="Plugins system: \${pink_color}Disabled\${normal_color}\${reboot_required_text}"
	
	arr["ENGLISH",655]="\${blue_color}Plugins system will be disabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",656]="\${blue_color}Plugins system will be enabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",657]="\${blue_color}tmux will be enabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",658]="\${blue_color}xterm will be enabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",659]="Error. Invalid function \"\${normal_color}\${current_function}\${red_color}\" at plugin \"\${normal_color}\${plugin}\${red_color}\". The function tried to be modified does not exist. Fix it before continuing"
	
	arr["ENGLISH",660]="Thanks to the plugins system, customized content can be developed. Custom modifications of any menu or functionality in a quick and simple way. More information at Wiki: \${normal_color}\${urlgithub_wiki}/Plugins%20System"
	
	arr["ENGLISH",661]="Error. You have conflicting plugins (\"\${normal_color}\${function_hooks[\${original_function},\${action}]}\${red_color}\" and \"\${normal_color}\${plugin}\${red_color}\") performing the same action \"\${normal_color}\${action}\${red_color}\" over the same function \"\${normal_color}\${original_function}\${red_color}\". Fix it before continuing"
	
	arr["ENGLISH",662]="Only one additional interface able to be used detected. Autoselected"
	
	arr["ENGLISH",663]="5.  Capture PMKID"
	
	arr["ENGLISH",664]="It is possible to obtain PMKIDs from clientless WPA/WPA2-PSK networks"
	
	arr["ENGLISH",665]="In WPA/WPA2-PSK networks you can crack either PMKIDs or Handshakes to obtain the network passphrase"
	
	arr["ENGLISH",666]="After capturing a Handshake or a PMKID, you can try to decrypt it on the offline WPA/WPA2 decrypt menu selecting \"Personal\" submenu"
	
	arr["ENGLISH",667]="It has been detected that you have installed an old aircrack version. No problem if you plan to crack a Handshake, but bear in mind that to crack PMKID is needed \${aircrack_pmkid_version} as a minimum version of aircrack. Otherwise PMKID will not be detected"
	
	arr["ENGLISH",668]="6.  (hashcat) Dictionary attack against PMKID capture file"
	
	arr["ENGLISH",669]="7.  (hashcat) Bruteforce attack against PMKID capture file"
	
	arr["ENGLISH",670]="8.  (hashcat) Rule based attack against PMKID capture file"
	
	arr["ENGLISH",671]="Don't close the window manually, script will do when needed. In about \${timeout} seconds maximum you'll know if you've got the PMKID"
	
	arr["ENGLISH",672]="It seems we failed... try it again, choose another target or increase the timeout. Maybe the access point is not vulnerable"
	
	arr["ENGLISH",673]="PMKID file generated successfully at [\${normal_color}\${enteredpath}\${blue_color}]"
	
	arr["ENGLISH",674]="Type the path to store the file or press [Enter] to accept the default proposal \${normal_color}[\${pmkidpath}]"
	
	arr["ENGLISH",675]="Selected file has a valid hashcat PMKID hashes format"
	
	arr["ENGLISH",676]="Selected file has an invalid hashcat PMKID hashes format"
	
	arr["ENGLISH",677]="You already have selected a capture file during this session [\${normal_color}\${hashcatpmkidenteredpath}\${blue_color}]"
	
	arr["ENGLISH",678]="You have hashcat installed (v\${hashcat_version}). You meet the version requirement to perform PMKID hashcat attack (minimum version v\${minimum_hashcat_pmkid_version}). Script can continue..."
	
	arr["ENGLISH",679]="You have hashcat installed (v\${hashcat_version}), but not required version. To perform PMKID hashcat attack you must have at least version v\${minimum_hashcat_pmkid_version}"
	
	arr["ENGLISH",680]="Although you were trying to capture a Handshake, it has been verified that a PMKID was successfully captured from the target network which is also valid"
	
	arr["ENGLISH",681]="In addition to capturing a Handshake, it has been verified that a PMKID from the target network has also been successfully captured"
	
	arr["ENGLISH",682]="No networks found with Handshake/PMKID captured on the selected file"
	
	arr["ENGLISH",683]="It has been verified that capture file contains Handshake/PMKID of target network. Script can continue..."
	
	arr["ENGLISH",684]="\${blue_color}The captured PMKID file is in a text format containing the hash in order to be cracked using hashcat. Additionally, airgeddon can transform the capture to \".cap\" format to let the file to be cracked using aircrack-ng as if it were an airodump-ng capture, but tshark command will be required to be able to carry out this transformation. \${green_color}Do you want to perform the transformation? \${pink_color}(you'll also keep the hashcat file, this is additional) \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",685]="Error. It looks like you don't have tshark command available. Depending on the system, the package name containing the command could be tshark, wireshark-cli, wireshark, etc. Install it before trying this transformation next time. The transformation can't be done"
	
	arr["ENGLISH",686]="Type the path to store the file or press [Enter] to accept the default proposal \${normal_color}[\${pmkidcappath}]"
	
	arr["ENGLISH",687]="12. Arabic"
	
	arr["ENGLISH",688]="13. Disable Network Manager force stop permanently"
	
	arr["ENGLISH",689]="13. Enable Network Manager force stop permanently"
	
	arr["ENGLISH",690]="Network Manager force stop: \${pink_color}Enabled\${normal_color}"
	
	arr["ENGLISH",691]="Network Manager force stop: \${pink_color}Disabled\${normal_color}"
	
	arr["ENGLISH",692]="\${blue_color}Network Manager force stop will be disabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",693]="\${blue_color}Network Manager force stop will be enabled. \${green_color}Do you want to continue? \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",694]="Network Manager force stop has been disabled"
	
	arr["ENGLISH",695]="Network Manager force stop has been enabled"
	
	arr["ENGLISH",696]="\${blue_color}The interface \${normal_color}\${current_iface_on_messages}\${blue_color} you have already selected is not supporting VIF (Virtual Interface). This attack needs it to virtually unfold itself to create the fake access point while also performing denial of service (DoS). \${green_color}Do you want to continue?\${pink_color} If yes, the denial of service will not work being an important part of the attack and making it probably ineffective \${normal_color}\${visual_choice}"
	
	arr["ENGLISH",697]="If you have any doubt or problem, you can check Wiki FAQ section (\${normal_color}\${urlgithub_wiki}/FAQ%20&%20Troubleshooting\${pink_color}) or ask in our Discord channel: \${normal_color}https://discord.gg/sQ9dgt9"
	
	arr["ENGLISH",698]="The port \${normal_color}\${busy_port}/\${port_type}\${red_color} is being used by some program or process different from airgeddon (probably \${normal_color}\${blocking_process_name}\${red_color}). The attack will not be able to be carried out because airgeddon needs that port to perform it. Please release the port by terminating the process that is causing the conflict in order to be able to perform this attack"
	
	arr["ENGLISH",699]="Do you have any problem with your wireless card? Do you want to know what card could be nice to be used in airgeddon? Check wiki: \${normal_color}\${urlgithub_wiki}/Cards%20and%20Chipsets"
	
	arr["ENGLISH",700]="It seems the captured Handshake is not a WPA2 Handshake and therefore is not valid. Probably the network is in WPA2/WPA3 \"Mixed mode\" and the client was using WPA3. Try again or wait until there are clients using WPA2"
	
	arr["ENGLISH",701]="It has been detected that you are using a version of Linux under Windows (WSL Windows Subsystem for Linux), but airgeddon does not support this type of system"
	
	arr["ENGLISH",702]="Thanks to our sponsors for their support:"
	
	arr["ENGLISH",703]="The hashcat version you have installed (\${hashcat_version}) is greater or equal than \${hashcat_hcx_conversion_version} so you need to convert the capture files, airgeddon will do this automatically. To do this you need a converter that is not present on your system (hcxpcapngtool command from hcxtools package), install it to be able to perform this attack"
	
	arr["ENGLISH",704]="A Wayland graphics system has been detected but airgeddon was unable to detect resolution. Try executing \"\${normal_color}xhost +SI:localuser:root\${red_color}\" command before launching airgeddon. If it does not work, probably your system is missing one of these two commands \"loginctl\", \"xdpyinfo\". Install the needed packages and then try again. For the first one, package name is systemd, for the second one there are some possibilities (it may vary depending on your Linux distribution). Some suggested package names are: x11-utils, xdpyinfo or xorg-xdpyinfo"
	
	arr["ENGLISH",705]="No graphics system was detected. Consider install one (X windows system or Wayland graphics) or use tmux instead of xterm modifying airgeddon options. More information about how to do this here: \${normal_color}https://github.com/v1s1t0r1sh3r3/airgeddon/wiki/Options"
	
	arr["ENGLISH",706]="airgeddon detected you don't have configured the country code for 5Ghz band. Use the \"\${normal_color}iw reg get\${blue_color}\" command to check the current configuration, and \"\${normal_color}iw reg set XX\${blue_color}\" to set the region where XX is your country code (e.g. \"\${normal_color}iw reg set ES\${blue_color}\" for Spain). Verify the configuration with \"\${normal_color}iw reg get\${blue_color}\" before attempting the attack on the 5Ghz target network. Anyway, the 5Ghz band has several channels that may not be available for operation due to country restrictions (DFS channels). If the target network uses one of these channels, the attack may not be successful"
}

#Expand escaped variables in language strings with their actual values
function replace_string_vars() {

	local message
	message=${arr[${1},${2}]}
	parsed_message=$(echo "${message}" | sed -E 's/\"/\\\"/g')
	eval "echo -e \"${parsed_message}\""
}

#Print a language string
#shellcheck disable=SC2154
function language_strings() {

	debug_print

	local message
	message=$(replace_string_vars "${@}")

	case "${3}" in
		"yellow")
			interrupt_checkpoint "${2}" "${3}"
			echo_yellow "${message}"
		;;
		"blue")
			echo_blue "${message}"
		;;
		"red")
			echo_red "${message}"
		;;
		"green")
			if [[ "${2}" -ne "${abort_question}" ]] 2>/dev/null && [[ "${2}" != "${abort_question}" ]]; then
				interrupt_checkpoint "${2}" "${3}"
			fi
			echo_green "${message}"
		;;
		"pink")
			echo_pink "${message}"
		;;
		"white")
			echo_white "${message}"
		;;
		"title")
			generate_dynamic_line "${message}" "title"
		;;
		"read")
			interrupt_checkpoint "${2}" "${3}"
			read -p "${message}" -r
		;;
		"multiline")
			echo -ne "${message}"
		;;
		"hint")
			if [ "${is_rtl_language}" -eq 1 ]; then
				echo_pink "${message} ${brown_color}${hintvar}"
			else
				echo_brown "${hintvar} ${pink_color}${message}"
			fi
		;;
		"separator")
			generate_dynamic_line "${message}" "separator"
		;;
		"warning")
			echo_yellow "${message}"
		;;
		"under_construction")
			echo_red_slim "${message} (${under_constructionvar})"
		;;
		*)
			if [ -z "${3}" ]; then
				last_echo "${message}" "${normal_color}"
			else
				special_text_missed_optional_tool "${1}" "${2}" "${3}"
			fi
		;;
	esac
}
