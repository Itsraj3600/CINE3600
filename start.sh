if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Itsraj3600/CINE3600.git /CINE3600
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /CINE3600
fi
cd /CINE3600
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
