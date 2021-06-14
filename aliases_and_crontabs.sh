#! /bin/bash

alias genUser='./genUser.sh'
alias permit='./permit.sh'
alias schedule='./schedule.sh'
alias attendance='./attendance.sh'
alias genMoM='./genMom.sh'
alias genMom1='./genMom1.sh'

crontab -l >mycron
echo "0 0 * * * /home/anonymous/Desktop/schedule.sh" >>mycron
crontab mycron
rm mycron

