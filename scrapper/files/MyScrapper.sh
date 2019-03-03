while true 
do
	wget -O m.html http://dojodevopschallenge.s3-website-eu-west-1.amazonaws.com/fortune_of_the_day.json?fbclid=IwAR0drjQxoSTXuT8Hiat8NNd70USniplECJV8O5bpISY6G4EO_Z5EytIksw8 >m.html
	count=$(jq '. | length' m.html)
	#echo "count is $count"
	Rand=$(shuf -i 1-$count -n 1)
	jq ".[$Rand].message" m.html>/tmp/myres/index.html
	ls -l /tmp/myres/index.html
	cat /tmp/myres/index.html
	sleep 10
done
