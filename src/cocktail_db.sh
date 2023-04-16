#!/bin/bash

api="www.thecocktaildb.com/api/json/v1"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36"

function search_cocktails() {
	curl --request GET \
		--url "$api/1/search.php?s=$1" \
		--user-agent "$user_agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json"
}

function cocktails_by_letter() {
	curl --request GET \
		--url "$api/1/search.php?f=$1" \
		--user-agent "$user_agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json"
}

function search_ingridients() {
	curl --request GET \
		--url "$api/1/search.php?i=$1" \
		--user-agent "$user_agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json"
}

function get_cocktail_details {
	curl --request GET \
		--url "$api/1/lookup.php?i=$1" \
		--user-agent "$user_agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json"
}

function get_ingridient_details {
	curl --request GET \
		--url "$api/1/lookup.php?iid=$1" \
		--user-agent "$user_agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json"
}

function get_random_cocktail() {
	curl --request GET \
		--url "$api/1/random.php" \
		--user-agent "$user_agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json"
}

function get_random_selection() {
	curl --request GET \
		--url "$api/1/randomselection.php" \
		--user-agent "$user_agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json"
}

function get_popular_cocktails() {
	curl --request GET \
		--url "$api/1/popular.php" \
		--user-agent "$user_agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json"
}

function get_latest_cocktails() {
	curl --request GET \
		--url "$api/1/latest.php" \
		--user-agent "$user_agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json"
}

function filter_by_multi_ingridient() {
	curl --request GET \
		--url "$api/1/filter.php?i=$1" \
		--user-agent "$user_agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json"
}

function filter_by_alcoholic() {
	curl --request GET \
		--url "$api/1/filter.php?a=$1" \
		--user-agent "$user_agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json"
}

function filter_by_category() {
	curl --request GET \
		--url "$api/1/filter.php?c=$1" \
		--user-agent "$user_agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json"
}

function filter_by_glass() {
	curl --request GET \
		--url "$api/1/filter.php?g=$1" \
		--user-agent "$user_agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json"
}
