#!/bin/bash

# you can use this or replace with yours
api_key=<e46d6b1c945f2e9983f0735f8928ea2f>
city_id=<4839366>
url="api.openweathermap.org/data/2.5/weather?id=${city_id}&appid=${api_key}"
curl ${url} -s -o ~/.cache/eleg-weather.json
