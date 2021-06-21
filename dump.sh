# Set up Git identity
git config --global user.name "Hendra Manudinata"
git config --global user.email "hendralize@gmail.com"

# Clone Phoenix Firmware Dump
git clone https://github.com/hendralizeStuff/phoenix_firmware_dumper fwdump && cd fwdump

# Set up required variables
echo ${GH_PAT} > .github_token
echo "hendralizeFwDump" > .github_orgname
echo ${BOT_TOKEN} > .tg_token
echo "1195724888" > .tg_chat

# Set up environment
./setup.sh

# Dump
./dumper.sh ${FW_URL}
