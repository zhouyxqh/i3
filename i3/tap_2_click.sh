 
#! /usr/bin/bash

# Get id of touchpad and the id of the field corresponding to
# tapping to click
id=`xinput list | grep "TouchPad" | cut -d'=' -f2 | cut -d'[' -f1`
tap_to_click_id=`xinput list-props $id | \
                      grep "Tapping Enabled (" \
                      | cut -d'(' -f2 | cut -d')' -f1`

# Set the property to true
#echo $id
#echo $tap_to_cick_id

xinput set-prop $id $tap_to_click_id 1

#xinput set-prop 13 270 1
