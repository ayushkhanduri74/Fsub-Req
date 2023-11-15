if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone ayushkhanduri74/Fsub-Req
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Fsub-Req
fi
cd /Fsub-Req
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py

