#! /bin/bash

for i in {01..10}
do
	for j in {11..30}
	do
		setfacl -m u:sysAd_"$j":r-x /home/sysAd_"$i"
		setfacl -m u:webDev_"$j":r-x /home/webDev_"$i"
		setfacl -m u:appDev_"$j":r-x /home/appDev_"$i"
	done
done

for k in {11..20}
do
	for l in {21..30}
	do
		setfacl -m u:sysAd_"$l":r-x /home/sysAd_"$k"
		setfacl -m u:webDev_"$l":r-x /home/webDev_"$k"
		setfacl -m u:appDev_"$l":r-x /home/appDev_"$k"
	done
done

for n in {01..30}
do
	setfacl -m u:Jay_Jay:r-x /home/sysAd_"$n"
	setfacl -m u:Jay_Jay:r-x /home/webDev_"$n"
	setfacl -m u:Jay_Jay:r-x /home/appDev_"$n"
done

for m in {01..30}
do
	setfacl -m other:--- /home/sysAd_"$m"
	setfacl -m other:--- /home/webDev_"$m"
	setfacl -m other:--- /home/appDev_"$m"
	setfacl -m mask:rwx /home/sysAd_"$m"
	setfacl -m mask:rwx /home/webDev_"$m"
	setfacl -m mask:rwx /home/appDev_"$m"
done


