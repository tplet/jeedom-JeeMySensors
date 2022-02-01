touch /tmp/dependancy_JeeMySensors_in_progress
echo 0 > /tmp/dependancy_JeeMySensors_in_progress
echo "********************************************************"
echo "*             Installation des dépendances             *"
echo "********************************************************"
apt-get update
echo 50 > /tmp/dependancy_JeeMySensors_in_progress
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
python get-pip.py
rm get-pip.py
echo 70 > /tmp/dependancy_JeeMySensors_in_progress
python -m pip install requests serial pyudev
echo 100 > /tmp/dependancy_JeeMySensors_in_progress
echo "********************************************************"
echo "*             Installation terminée                    *"
echo "********************************************************"
rm /tmp/dependancy_JeeMySensors_in_progress
