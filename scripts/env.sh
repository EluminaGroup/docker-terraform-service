#!/bin/bash

print_dev() {
  printf '%s           %s          %s         %s\n' 
  printf '%s  ____     %s  ______  %s  _   _  %s\n' 
  printf '%s /  __  \  %s /  ___/  %s / \ | \ %s\n' 
  printf '%s | |   \ | %s |  \     %s | | / / %s\n' 
  printf '%s | |__ / | %s |  /___  %s | \/ /  %s\n' 
  printf '%s \______/  %s \______\ %s \___/   %s\n' 
  printf '%s    %s        %s       %s  %s....is selected account%s\n' 
  printf '\n'
  printf '\n'
}

print_sit() {
  printf '%s        %s          %s          %s\n' 
  printf '%s  ____  %s  ______  %s  ______  %s\n' 
  printf '%s/ ____) %s (__  __) %s (__  __) %s\n' 
  printf '%s\____ \ %s  __)(__  %s   _)(_   %s\n' 
  printf '%s(_____/ %s (______) %s  (____)  %s\n' 
  printf '%s    %s        %s      %s   %s....is selected account%s\n' 
  printf '\n'
  printf '\n'
}

print_uat() {
  printf '%s           %s           %s          %s\n' 
  printf '%s __    __  %s    ___    %s  ______  %s\n' 
  printf '%s(  )  (  ) %s   /___\   %s (__  __) %s\n' 
  printf '%s )(____)(  %s  /(___)\  %s   _)(_   %s\n' 
  printf '%s(________) %s (__) (__) %s  (____)  %s\n' 
  printf '%s    %s        %s      %s   %s....is selected account%s\n' 
  printf '\n'
  printf '\n'
}

print_stg() {
  printf '%s        %s          %s         %s\n' 
  printf '%s  ____  %s  ______  %s   ____  %s\n' 
  printf '%s/ ____) %s (__  __) %s  / ___) %s\n' 
  printf '%s\____ \ %s   _)(_   %s ( (__-. %s\n' 
  printf '%s(_____/ %s  (____)  %s  \____/ %s\n' 
  printf '%s    %s        %s      %s   %s....is selected account%s\n' 
  printf '\n'
  printf '\n'
}

print_prd() {
  printf '%s         %s         %s          %s\n' 
  printf '%s  _____  %s  _____  %s  _____   %s\n' 
  printf '%s (  __ \ %s (  __ \ %s |  __ \  %s\n' 
  printf '%s  )____/ %s  )    / %s | (__) | %s\n' 
  printf '%s (__)    %s (__)\_) %s |_____/  %s\n' 
  printf '%s    %s        %s      %s   %s....is selected account%s\n' 
  printf '\n'
  printf '\n'
}

print_idp() {
  printf '%s          %s          %s         %s\n' 
  printf '%s  ______  %s  _____   %s  _____  %s\n' 
  printf '%s (__  __) %s |  __ \  %s (  __ \ %s\n' 
  printf '%s  __)(__  %s | (__) | %s  )____/ %s\n' 
  printf '%s (______) %s |_____/  %s (__)    %s\n' 
  printf '%s    %s        %s      %s   %s....is selected account%s\n'
  printf '\n'
  printf '\n'
}

print_mgm() {
  printf '%s          %s         %s          %s\n'
  printf '%s  __  __  %s   ____  %s  __  __  %s\n'
  printf '%s (  \/  ) %s  / ___) %s (  \/  ) %s\n'
  printf '%s  )    (  %s ( (__-. %s  )    (  %s\n'
  printf '%s (_/\/\_) %s  \____/ %s (_/\/\_) %s\n'
  printf '%s    %s        %s      %s   %s....is selected account%s\n'
  printf '\n'
  printf '\n'
}

if [[ $AWS_ENV == 'dev' ]]
then
    print_dev
then
    print_uat
elif [[ $AWS_ENV == 'stg' ]]
then
    print_stg
elif [[ $AWS_ENV == 'prd' ]]
then
    print_prd
elif [[ $AWS_ENV == 'identity' ]]
then
    print_idp
    
else
    echo "Environment Not Selected"
fi