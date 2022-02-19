A=0
echo "" > $3
for file in `find $2 -type f -user $1`
do
A=$(($A+1))
realpath $file >> $3
basename $file >> $3
stat --printf "%s" $file >> $3
echo >> $3

done
echo "Количество просмотренных файлов = $A"
