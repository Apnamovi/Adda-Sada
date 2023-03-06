if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone Apnamovi/Adda-Sada
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Adda-Sada
fi
cd /Adda-Sada
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
