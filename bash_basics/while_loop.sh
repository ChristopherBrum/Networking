counter=0
max=99

while [ $counter -le $max ]
do
  echo Counter is currently: $counter
  ((counter+=3))
done