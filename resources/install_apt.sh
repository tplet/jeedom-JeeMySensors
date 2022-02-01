PROGRESS_FILE=/tmp/dependancy_JeeMySensors_in_progress
if [ ! -z $1 ]; then
  PROGRESS_FILE=$1
fi
touch ${PROGRESS_FILE}
echo 0 > ${PROGRESS_FILE}
echo "********************************************************"
echo "*             Installation des dépendances             *"
echo "********************************************************"
apt-get update
echo 50 > ${PROGRESS_FILE}
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
python get-pip.py
rm get-pip.py
echo 70 > /tmp/dependancy_JeeMySensors_in_progress
python -m pip install requests serial pyudev
echo 100 > ${PROGRESS_FILE}
echo "********************************************************"
echo "*             Installation terminée                    *"
echo "********************************************************"
rm ${PROGRESS_FILE}
