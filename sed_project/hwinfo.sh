echo
lscpu | sed -n '/^CPU(s):/ p'

echo ======
echo Memory:
echo ======

echo  

free -h | sed -n '/Mem:/ p' | sed 's/Gi/ Gigabytes/g'
echo    


echo Disks:
echo ======


df -h | sed -n '/volume1/ p' | sed -nE "/[0-9]{1,100}T/ p"
echo

echo Date:
echo ======
date | sed 's/Mon/Monday,/g; s/Tue/Tuesday,/g; s/Wed/Wednesday,/g; s/Thu/Thursday,/g; s/Fri/Friday,/g; s/Sat/Saturday,/g; s/Sun/Sunday,/g; s/Mar/March/g; s/Jan/January/g; s/Feb/February/g; s/Apr/April/g; s/Jun/June/g; s/Jul/July/g; s/Aug/August/g; s/Sep/September/g; s/Oct/October/g; s/Nov/November/g; s/Dec/December/g; s/2021/2021./; s/PM/p.m./; s/AM/a.m./; s/EST/Eastern Standard/'

echo  





