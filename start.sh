if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Chowdary106/THALAPATHY-FILTER-BOTv /THALAPATHY-FILTER-BOT 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /THALAPATHY-FILTER-BOT 
fi
cd /THALAPATHY-FILTER-BOT 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
