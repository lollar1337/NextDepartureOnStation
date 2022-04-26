raw_data=$(curl -s https://dbf.finalrewind.org/$1.json?limit=1)

destination=$(echo $raw_data | jq -r .departures[].destination)
platform=$(echo $raw_data | jq -r .departures[].scheduledPlatform)
train=$(echo $raw_data | jq -r .departures[].train)

echo "Gleis" $platform "Einfahrt" $train "nach" $destination
