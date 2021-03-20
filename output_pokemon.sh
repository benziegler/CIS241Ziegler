


echo " "
echo "Highest Overall Pokemon: "
awk '{print}' pokemon.csv | tail -n+2 | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print want}'
echo " "


echo "Averages of each column statistic for every column: "
echo " "
awk '{print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Average Overall Total = ",sum/NR}'
awk '{print}' pokemon.csv | awk -F, '{print $6}' | awk '{sum+=$1} END {print "Average Overall HP = ",sum/NR}'
awk '{print}' pokemon.csv | awk -F, '{print $7}' | awk '{sum+=$1} END {print "Average Overall Attack = ",sum/NR}'
awk '{print}' pokemon.csv | awk -F, '{print $8}' | awk '{sum+=$1} END {print "Average Overall Defense = ",sum/NR}'
awk '{print}' pokemon.csv | awk -F, '{print $9}' | awk '{sum+=$1} END {print "Average Overall Sp. Attack = ",sum/NR}'
awk '{print}' pokemon.csv | awk -F, '{print $10}' | awk '{sum+=$1} END {print "Average Overall Sp. Defense = ",sum/NR}'
awk '{print}' pokemon.csv | awk -F, '{print $11}' | awk '{sum+=$1} END {print "Average Overall Speed = ",sum/NR}'
echo " "



echo "Average Statistics of the Pokemon for each type"
echo " "

awk '/Fire/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Fire Average = ",sum/NR}'

awk '/Normal/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Normal Average = ",sum/NR}'
awk '/Water/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Water Average = ",sum/NR}'
awk '/Grass/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Grass Average = ",sum/NR}'
awk '/Electric/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Electric Average = ",sum/NR}'
awk '/Ice/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Ice Average = ",sum/NR}'
awk '/Fighting/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Fighting Average = ",sum/NR}'
awk '/Poison/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Poison Average = ",sum/NR}'
awk '/Ground/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Ground Average = ",sum/NR}'
awk '/Flying/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Flying Average = ",sum/NR}'
awk '/Psychic/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Psychic Average = ",sum/NR}'
awk '/Bug/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Bug Average = ",sum/NR}'
awk '/Rock/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Rock Average = ",sum/NR}'
awk '/Ghost/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Ghost Average = ",sum/NR}'
awk '/Dark/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Dark Average = ",sum/NR}'
awk '/Dragon/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Dragon Average = ",sum/NR}'
awk '/Steel/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Steel Average = ",sum/NR}'
awk '/Fairy/ {print}' pokemon.csv | awk -F, '{print $5}' | awk '{sum+=$1} END {print "Fairy Average = ",sum/NR}'
echo " "

echo "Most powerful pokemon of each type"
echo " "


awk '/Normal/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Normal: ",want}'
awk '/Fire/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Fire: ", want}'
awk '/Water/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Water: ", want}'
awk '/Grass/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Grass: ", want}'
awk '/Electric/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Electric: ", want}'
awk '/Ice/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Ice: ", want}'
awk '/Fighting/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Fighting: ", want}'
awk '/Poison/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Poison: ", want}'
awk '/Ground/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Ground: ", want}'
awk '/Flying/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Flying: ", want}'
awk '/Psychic/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Psychic: ", want}'
awk '/Bug/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Bug: ", want}'
awk '/Rock/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Rock: ", want}'
awk '/Ghost/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Ghost: ", want}'
awk '/Dark/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Dark: ", want}'
awk '/Dragon/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Dragon: ", want}'
awk '/Steel/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Steel: ", want}'
awk '/Fairy/ {print}' pokemon.csv | awk -F, '{print $2,$5}' | awk -v max=0 '{if($NF>max){want=$1; max =$NF}}END {print "Highest Fairy: ", want}'
echo " "


echo "Interesting Statistic: "
awk '{print}' pokemon.csv | awk -F, '{print $2, $11}' | awk -v min=1000 '{if($NF<0+min){want=$1; min =$NF}}END {print "Slowest Pokemon: ",want}'
echo " "




