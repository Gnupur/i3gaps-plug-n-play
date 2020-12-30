bash run-dependencies-install.sh
read -p "
 Press when you're ready to install i3-gaps [Enter]:  "
echo ''
bash run-i3gaps-install.sh
read -p "
 Press when you're ready to check recommended software [Enter]:  "
echo ''
bash run-recommended-install.sh
read -p "
 Press when you're ready to install polybar [Enter]:  "
echo ''
bash run-polybar-install.sh
